`timescale 1ns / 1ps

// AXI4-Lite Slave with 32-bit to 8-bit Byte Unpacking
// Accepts a full 32-bit word from the AXI bus and pushes it into the FIFO
// as 4 separate 8-bit bytes over 4 clock cycles.
module axi4lite_slave #(
    parameter DATA_WIDTH = 32,
    parameter ADDR_WIDTH = 4
)(
    input  wire  S_AXI_ACLK,
    input  wire  S_AXI_ARESETN,
    
    // Write Address Channel
    input  wire [ADDR_WIDTH-1:0] S_AXI_AWADDR,
    input  wire                  S_AXI_AWVALID,
    output wire                  S_AXI_AWREADY,
    
    // Write Data Channel
    input  wire [DATA_WIDTH-1:0] S_AXI_WDATA,
    input  wire [(DATA_WIDTH/8)-1:0] S_AXI_WSTRB,
    input  wire                  S_AXI_WVALID,
    output wire                  S_AXI_WREADY,
    
    // Write Response Channel
    output wire [1:0]            S_AXI_BRESP,
    output wire                  S_AXI_BVALID,
    input  wire                  S_AXI_BREADY,
    
    // Read Channels (Tied off for write-only)
    input  wire [ADDR_WIDTH-1:0] S_AXI_ARADDR,
    input  wire                  S_AXI_ARVALID,
    output wire                  S_AXI_ARREADY,
    output wire [DATA_WIDTH-1:0] S_AXI_RDATA,
    output wire [1:0]            S_AXI_RRESP,
    output wire                  S_AXI_RVALID,
    input  wire                  S_AXI_RREADY,
    
    // User interface connecting to the FIFO
    output reg  [7:0]            fifo_wdata,
    output reg                   fifo_winc,
    input  wire                  fifo_wfull
);

    // ---------------------------------------------------------------
    // FSM STATES
    // ---------------------------------------------------------------
    // The slave now has 3 states:
    //   IDLE     - waiting for an AXI write transaction
    //   UNPACK   - pushing 4 bytes into FIFO one at a time
    //   RESPOND  - sending BRESP back to master
    localparam S_IDLE    = 2'b00;
    localparam S_UNPACK  = 2'b01;
    localparam S_RESPOND = 2'b10;

    reg [1:0]  state;
    reg [31:0] wdata_latched;   // Latched copy of the full 32-bit AXI data
    reg [3:0]  wstrb_latched;   // Latched copy of the write strobe
    reg [1:0]  byte_index;      // Which byte are we pushing? (0, 1, 2, 3)

    // ---------------------------------------------------------------
    // AXI HANDSHAKE OUTPUTS
    // ---------------------------------------------------------------
    // AWREADY and WREADY are only HIGH during IDLE (accepting new writes)
    // They go LOW during UNPACK and RESPOND (we are busy)
    assign S_AXI_AWREADY = (state == S_IDLE) && S_AXI_AWVALID && S_AXI_WVALID && !fifo_wfull;
    assign S_AXI_WREADY  = (state == S_IDLE) && S_AXI_AWVALID && S_AXI_WVALID && !fifo_wfull;
    assign S_AXI_BVALID  = (state == S_RESPOND);
    assign S_AXI_BRESP   = 2'b00; // OKAY response

    // Tie off read channels
    assign S_AXI_ARREADY = 1'b0;
    assign S_AXI_RDATA   = 0;
    assign S_AXI_RRESP   = 2'b00;
    assign S_AXI_RVALID  = 1'b0;

    // ---------------------------------------------------------------
    // MAIN STATE MACHINE
    // ---------------------------------------------------------------
    always @(posedge S_AXI_ACLK or negedge S_AXI_ARESETN) begin
        if (!S_AXI_ARESETN) begin
            state         <= S_IDLE;
            wdata_latched <= 32'b0;
            wstrb_latched <= 4'b0;
            byte_index    <= 2'b0;
            fifo_wdata    <= 8'b0;
            fifo_winc     <= 1'b0;
        end else begin
            case (state)

                // ---------------------------------------------------
                // IDLE: Wait for a valid AXI write (both AW and W)
                // ---------------------------------------------------
                S_IDLE: begin
                    fifo_winc <= 1'b0;
                    byte_index <= 2'b0;
                    
                    if (S_AXI_AWVALID && S_AXI_WVALID && !fifo_wfull) begin
                        // Latch the entire 32-bit data word and strobe
                        wdata_latched <= S_AXI_WDATA;
                        wstrb_latched <= S_AXI_WSTRB;
                        state         <= S_UNPACK;
                    end
                end

                // ---------------------------------------------------
                // UNPACK: Push 4 bytes into FIFO, one per clock cycle
                // ---------------------------------------------------
                S_UNPACK: begin
                    if (fifo_wfull) begin
                        // FIFO is full, pause — hold current byte_index
                        // and wait until FIFO has room
                        fifo_winc <= 1'b0;
                    end else begin
                        // Select the correct byte based on byte_index
                        case (byte_index)
                            2'd0: fifo_wdata <= wdata_latched[ 7: 0];
                            2'd1: fifo_wdata <= wdata_latched[15: 8];
                            2'd2: fifo_wdata <= wdata_latched[23:16];
                            2'd3: fifo_wdata <= wdata_latched[31:24];
                        endcase
                        
                        // Only push to FIFO if strobe says this byte is valid
                        fifo_winc <= wstrb_latched[byte_index];
                        
                        if (byte_index == 2'd3) begin
                            // All 4 bytes done, move to respond
                            byte_index <= 2'b0;
                            state      <= S_RESPOND;
                        end else begin
                            byte_index <= byte_index + 1;
                        end
                    end
                end

                // ---------------------------------------------------
                // RESPOND: Send BRESP back to master
                // ---------------------------------------------------
                S_RESPOND: begin
                    fifo_winc <= 1'b0;
                    
                    if (S_AXI_BREADY) begin
                        // Master accepted our response, transaction complete
                        state <= S_IDLE;
                    end
                    // If master hasn't raised BREADY yet, we stay here
                    // holding BVALID high until it does
                end

                default: state <= S_IDLE;
            endcase
        end
    end

endmodule
