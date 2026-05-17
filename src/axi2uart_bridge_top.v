`timescale 1ns / 1ps

module axi2uart_bridge_top (
    // AXI Domain (Fast System Clock)
    input  wire         s_axi_aclk,
    input  wire         s_axi_aresetn,
    
    // AXI-Lite Write Interface
    input  wire [3:0]   s_axi_awaddr,
    input  wire         s_axi_awvalid,
    output wire         s_axi_awready,
    input  wire [31:0]  s_axi_wdata,
    input  wire [3:0]   s_axi_wstrb,
    input  wire         s_axi_wvalid,
    output wire         s_axi_wready,
    output wire [1:0]   s_axi_bresp,
    output wire         s_axi_bvalid,
    input  wire         s_axi_bready,

    // UART Domain (Slow Clock)
    input  wire         uart_clk,
    input  wire         uart_rst_n,
    output wire         uart_tx_out
);

    // ── Internal Wires ──
    wire [7:0] fifo_wdata;
    wire       fifo_winc;
    wire       fifo_wfull;
    wire [7:0] fifo_rdata;
    wire       fifo_rempty;
    wire       uart_ready;

    // ── FIFO-to-UART Pop Controller (uart_clk domain) ──
    //
    // 4-state FSM with explicit timing:
    //   POP_IDLE  : Wait for FIFO !empty AND UART ready
    //   POP_LATCH : fifo_rinc was asserted, data is latched. Assert tx_start.
    //   POP_GUARD : tx_start was seen by UART. Wait 1 cycle for UART to react.
    //   POP_TXING : UART is busy transmitting. Wait for it to finish.
    //
    localparam POP_IDLE  = 2'd0;
    localparam POP_LATCH = 2'd1;
    localparam POP_GUARD = 2'd2;
    localparam POP_TXING = 2'd3;

    reg [1:0]  pop_state;
    reg [7:0]  tx_data_reg;
    reg        tx_start_reg;
    reg        fifo_rinc;

    always @(posedge uart_clk or negedge uart_rst_n) begin
        if (!uart_rst_n) begin
            pop_state    <= POP_IDLE;
            tx_data_reg  <= 8'b0;
            tx_start_reg <= 1'b0;
            fifo_rinc    <= 1'b0;
        end else begin
            // Defaults: single-cycle pulses auto-clear
            fifo_rinc    <= 1'b0;
            tx_start_reg <= 1'b0;

            case (pop_state)
                // ── Wait for data & UART ready ──
                POP_IDLE: begin
                    if (!fifo_rempty && uart_ready) begin
                        fifo_rinc   <= 1'b1;        // Pop 1 byte from FIFO
                        tx_data_reg <= fifo_rdata;   // Latch data NOW
                        pop_state   <= POP_LATCH;
                    end
                end

                // ── Data latched, tell UART to start ──
                POP_LATCH: begin
                    tx_start_reg <= 1'b1;            // Assert tx_start
                    pop_state    <= POP_GUARD;
                end

                // ── Wait 1 cycle for UART to react to tx_start ──
                // (uart_ready won't drop until next cycle)
                POP_GUARD: begin
                    pop_state <= POP_TXING;
                end

                // ── Wait for UART to finish transmitting ──
                POP_TXING: begin
                    if (uart_ready) begin
                        pop_state <= POP_IDLE;       // UART done, go again
                    end
                end

                default: pop_state <= POP_IDLE;
            endcase
        end
    end

    // ── 1. AXI4-Lite Slave ──
    axi4lite_slave #(
        .DATA_WIDTH(32),
        .ADDR_WIDTH(4)
    ) u_axi_slave (
        .S_AXI_ACLK(s_axi_aclk),
        .S_AXI_ARESETN(s_axi_aresetn),
        .S_AXI_AWADDR(s_axi_awaddr),
        .S_AXI_AWVALID(s_axi_awvalid),
        .S_AXI_AWREADY(s_axi_awready),
        .S_AXI_WDATA(s_axi_wdata),
        .S_AXI_WSTRB(s_axi_wstrb),
        .S_AXI_WVALID(s_axi_wvalid),
        .S_AXI_WREADY(s_axi_wready),
        .S_AXI_BRESP(s_axi_bresp),
        .S_AXI_BVALID(s_axi_bvalid),
        .S_AXI_BREADY(s_axi_bready),
        .S_AXI_ARADDR(4'b0),
        .S_AXI_ARVALID(1'b0),
        .S_AXI_RREADY(1'b0),
        .fifo_wdata(fifo_wdata),
        .fifo_winc(fifo_winc),
        .fifo_wfull(fifo_wfull)
    );

    // ── 2. Asynchronous FIFO ──
    async_fifo #(
        .DATA_WIDTH(8),
        .ADDR_WIDTH(4)
    ) u_async_fifo (
        .wclk(s_axi_aclk),
        .wrst_n(s_axi_aresetn),
        .winc(fifo_winc),
        .wdata(fifo_wdata),
        .wfull(fifo_wfull),
        .rclk(uart_clk),
        .rrst_n(uart_rst_n),
        .rinc(fifo_rinc),
        .rdata(fifo_rdata),
        .rempty(fifo_rempty)
    );

    // ── 3. UART Transmitter ──
    uart_tx #(
        .CLKS_PER_BIT(87)
    ) u_uart_tx (
        .clk(uart_clk),
        .rst_n(uart_rst_n),
        .tx_start(tx_start_reg),
        .tx_data(tx_data_reg),
        .tx_active(),
        .tx_serial(uart_tx_out),
        .tx_done(),
        .ready(uart_ready)
    );

endmodule
