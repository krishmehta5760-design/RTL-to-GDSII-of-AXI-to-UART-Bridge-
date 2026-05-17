`timescale 1ns / 1ps

module uart_tx #(
    // Setup for 115200 baud at a given clock frequency.
    // Example: Clock = 10 MHz. CLKS_PER_BIT = 10,000,000 / 115200 = 87
    parameter CLKS_PER_BIT = 87 
)(
    input  wire       clk,
    input  wire       rst_n,
    input  wire       tx_start,
    input  wire [7:0] tx_data,
    
    output reg        tx_active,
    output reg        tx_serial,
    output reg        tx_done,
    output wire       ready // Signals when it can accept a new byte
);

    localparam s_IDLE  = 3'b000;
    localparam s_START = 3'b001;
    localparam s_DATA  = 3'b010;
    localparam s_STOP  = 3'b011;

    reg [2:0]  state;
    reg [15:0] clk_count;
    reg [2:0]  bit_index;
    reg [7:0]  tx_data_r;
    
    assign ready = (state == s_IDLE);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state     <= s_IDLE;
            tx_active <= 1'b0;
            tx_serial <= 1'b1;
            tx_done   <= 1'b0;
            clk_count <= 0;
            bit_index <= 0;
            tx_data_r <= 0;
        end else begin
            case (state)
                s_IDLE: begin
                    tx_serial <= 1'b1;
                    tx_done   <= 1'b0;
                    clk_count <= 0;
                    bit_index <= 0;
                    
                    if (tx_start) begin
                        tx_active <= 1'b1;
                        tx_data_r <= tx_data;
                        state     <= s_START;
                    end else begin
                        tx_active <= 1'b0;
                    end
                end
                
                s_START: begin
                    tx_serial <= 1'b0; // Start bit is low
                    if (clk_count < CLKS_PER_BIT - 1) begin
                        clk_count <= clk_count + 1;
                        state     <= s_START;
                    end else begin
                        clk_count <= 0;
                        state     <= s_DATA;
                    end
                end
                
                s_DATA: begin
                    tx_serial <= tx_data_r[bit_index];
                    if (clk_count < CLKS_PER_BIT - 1) begin
                        clk_count <= clk_count + 1;
                        state     <= s_DATA;
                    end else begin
                        clk_count <= 0;
                        if (bit_index < 7) begin
                            bit_index <= bit_index + 1;
                            state     <= s_DATA;
                        end else begin
                            bit_index <= 0;
                            state     <= s_STOP;
                        end
                    end
                end
                
                s_STOP: begin
                    tx_serial <= 1'b1; // Stop bit is high
                    if (clk_count < CLKS_PER_BIT - 1) begin
                        clk_count <= clk_count + 1;
                        state     <= s_STOP;
                    end else begin
                        tx_done   <= 1'b1;
                        clk_count <= 0;
                        state     <= s_IDLE;
                    end
                end
                
                default: state <= s_IDLE;
            endcase
        end
    end

endmodule
