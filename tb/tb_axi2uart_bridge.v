`timescale 1ns / 1ps

module tb_axi2uart_bridge;

    // ── Parameters ──
    localparam AXI_CLK_PERIOD  = 10;    // 100 MHz
    localparam UART_CLK_PERIOD = 100;   // 10 MHz
    localparam CLKS_PER_BIT    = 87;    // 115200 baud @ 10 MHz

    // ── Signals ──
    reg         s_axi_aclk, uart_clk;
    reg         s_axi_aresetn, uart_rst_n;
    reg  [3:0]  s_axi_awaddr;
    reg         s_axi_awvalid, s_axi_wvalid, s_axi_bready;
    reg  [31:0] s_axi_wdata;
    reg  [3:0]  s_axi_wstrb;
    wire        s_axi_awready, s_axi_wready, s_axi_bvalid;
    wire [1:0]  s_axi_bresp;
    wire        uart_tx_out;

    // ── Clocks ──
    initial s_axi_aclk = 0;
    always #(AXI_CLK_PERIOD / 2) s_axi_aclk = ~s_axi_aclk;
    initial uart_clk = 0;
    always #(UART_CLK_PERIOD / 2) uart_clk = ~uart_clk;

    // ── DUT ──
    axi2uart_bridge_top DUT (
        .s_axi_aclk(s_axi_aclk), .s_axi_aresetn(s_axi_aresetn),
        .s_axi_awaddr(s_axi_awaddr), .s_axi_awvalid(s_axi_awvalid),
        .s_axi_awready(s_axi_awready),
        .s_axi_wdata(s_axi_wdata), .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid), .s_axi_wready(s_axi_wready),
        .s_axi_bresp(s_axi_bresp), .s_axi_bvalid(s_axi_bvalid),
        .s_axi_bready(s_axi_bready),
        .uart_clk(uart_clk), .uart_rst_n(uart_rst_n),
        .uart_tx_out(uart_tx_out)
    );

    // ── AXI Write Task ──
    task axi_write;
        input [3:0]  addr;
        input [31:0] data;
        input [3:0]  strb;
        begin
            @(posedge s_axi_aclk);
            s_axi_awaddr  <= addr;
            s_axi_awvalid <= 1'b1;
            s_axi_wdata   <= data;
            s_axi_wstrb   <= strb;
            s_axi_wvalid  <= 1'b1;
            s_axi_bready  <= 1'b1;
            // Wait for handshake
            @(posedge s_axi_aclk);
            wait (s_axi_awready && s_axi_wready);
            @(posedge s_axi_aclk);
            s_axi_awvalid <= 1'b0;
            s_axi_wvalid  <= 1'b0;
            // Wait for response
            wait (s_axi_bvalid);
            @(posedge s_axi_aclk);
            s_axi_bready <= 1'b0;
            $display("[%0t] AXI WRITE: data=0x%08h strb=%04b", $time, data, strb);
        end
    endtask

    // ── UART Clock-Edge Receiver ──
    // Uses uart_clk edges for counting instead of #delays.
    // Much more robust and immune to timing drift.
    integer   clk_cnt;
    integer   bit_i;
    reg [7:0] rx_byte;

    // Scoreboard
    reg [7:0] expected [0:63];
    integer   exp_cnt, rx_cnt, pass_cnt, fail_cnt;

    task add_exp;
        input [7:0] b;
        begin
            expected[exp_cnt] = b;
            exp_cnt = exp_cnt + 1;
        end
    endtask

    task uart_rx_byte;
        begin
            // 1) Wait for start bit (falling edge on TX line)
            @(negedge uart_tx_out);

            // 2) Wait to middle of start bit (CLKS_PER_BIT/2 uart_clk edges)
            for (clk_cnt = 0; clk_cnt < CLKS_PER_BIT/2; clk_cnt = clk_cnt + 1)
                @(posedge uart_clk);

            // Verify start bit is still LOW
            if (uart_tx_out !== 1'b0) begin
                $display("[%0t] ERROR: False start bit!", $time);
            end

            // 3) Sample 8 data bits at center of each bit period
            for (bit_i = 0; bit_i < 8; bit_i = bit_i + 1) begin
                for (clk_cnt = 0; clk_cnt < CLKS_PER_BIT; clk_cnt = clk_cnt + 1)
                    @(posedge uart_clk);
                rx_byte[bit_i] = uart_tx_out;
            end

            // 4) Check stop bit
            for (clk_cnt = 0; clk_cnt < CLKS_PER_BIT; clk_cnt = clk_cnt + 1)
                @(posedge uart_clk);
            if (uart_tx_out !== 1'b1)
                $display("[%0t] ERROR: Missing stop bit!", $time);

            // 5) Scoreboard check
            if (rx_cnt < exp_cnt) begin
                if (rx_byte === expected[rx_cnt]) begin
                    $display("[%0t] RX #%0d: 0x%02h ('%c') PASS",
                             $time, rx_cnt, rx_byte, rx_byte);
                    pass_cnt = pass_cnt + 1;
                end else begin
                    $display("[%0t] RX #%0d: 0x%02h ('%c') FAIL (exp 0x%02h '%c')",
                             $time, rx_cnt, rx_byte, rx_byte,
                             expected[rx_cnt], expected[rx_cnt]);
                    fail_cnt = fail_cnt + 1;
                end
            end else begin
                $display("[%0t] RX #%0d: 0x%02h UNEXPECTED", $time, rx_cnt, rx_byte);
                fail_cnt = fail_cnt + 1;
            end
            rx_cnt = rx_cnt + 1;
        end
    endtask

    // ── Main Test ──
    initial begin
        $dumpfile("axi2uart_bridge.vcd");
        $dumpvars(0, tb_axi2uart_bridge);

        exp_cnt = 0; rx_cnt = 0; pass_cnt = 0; fail_cnt = 0;
        s_axi_aresetn = 0; uart_rst_n = 0;
        s_axi_awaddr = 0; s_axi_awvalid = 0;
        s_axi_wdata = 0; s_axi_wstrb = 0;
        s_axi_wvalid = 0; s_axi_bready = 0;

        #200; s_axi_aresetn = 1; uart_rst_n = 1; #100;

        $display("=========================================");
        $display(" AXI-UART Bridge Testbench");
        $display("=========================================");

        // ── TEST 1: "Hell" (4 bytes, WSTRB=1111) ──
        $display("\n--- TEST 1: 'Hell' ---");
        add_exp(8'h48); add_exp(8'h65); add_exp(8'h6C); add_exp(8'h6C);
        axi_write(4'h0, 32'h6C6C6548, 4'b1111);

        // Wait for 4 UART bytes to be transmitted
        wait(rx_cnt >= 4);
        #1000;

        // ── TEST 2: "o!" (2 bytes, WSTRB=0011) ──
        $display("\n--- TEST 2: 'o!' ---");
        add_exp(8'h6F); add_exp(8'h21);
        axi_write(4'h0, 32'hDEAD216F, 4'b0011);

        wait(rx_cnt >= 6);
        #1000;

        // ── TEST 3: Single byte 0x0A (WSTRB=0001) ──
        $display("\n--- TEST 3: single byte ---");
        add_exp(8'h0A);
        axi_write(4'h0, 32'hDEADBE0A, 4'b0001);

        wait(rx_cnt >= 7);
        #1000;

        // ── TEST 4: Back-to-back "AXI4" + "Lite" ──
        $display("\n--- TEST 4: 'AXI4Lite' ---");
        add_exp(8'h41); add_exp(8'h58); add_exp(8'h49); add_exp(8'h34);
        add_exp(8'h4C); add_exp(8'h69); add_exp(8'h74); add_exp(8'h65);
        axi_write(4'h0, 32'h34495841, 4'b1111);
        axi_write(4'h0, 32'h6574694C, 4'b1111);

        wait(rx_cnt >= 15);
        #1000;

        // ── TEST 5: Sequential burst ──
        $display("\n--- TEST 5: burst ---");
        add_exp(8'h01); add_exp(8'h02); add_exp(8'h03); add_exp(8'h04);
        axi_write(4'h0, 32'h04030201, 4'b1111);
        add_exp(8'h05); add_exp(8'h06); add_exp(8'h07); add_exp(8'h08);
        axi_write(4'h0, 32'h08070605, 4'b1111);

        wait(rx_cnt >= 23);
        #1000;

        // ── Results ──
        $display("\n=========================================");
        $display(" RESULTS: %0d PASS, %0d FAIL (of %0d)", pass_cnt, fail_cnt, exp_cnt);
        if (fail_cnt == 0 && rx_cnt == exp_cnt)
            $display(" >>> ALL TESTS PASSED <<<");
        else
            $display(" >>> TESTS FAILED <<<");
        $display("=========================================");
        $finish;
    end

    // ── Background UART Receiver ──
    initial begin
        wait (uart_rst_n == 1);
        #500;
        forever uart_rx_byte;
    end

    // ── Timeout ──
    initial begin
        #50_000_000;
        $display("\nTIMEOUT after 50ms! RX'd %0d/%0d bytes", rx_cnt, exp_cnt);
        $finish;
    end

endmodule
