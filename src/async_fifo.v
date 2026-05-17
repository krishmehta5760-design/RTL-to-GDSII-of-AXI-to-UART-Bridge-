`timescale 1ns / 1ps

// Asynchronous FIFO based on Clifford E. Cummings' architecture
module async_fifo #(
    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 4 // 16 entries
)(
    // Write Domain
    input  wire                  wclk,
    input  wire                  wrst_n,
    input  wire                  winc,
    input  wire [DATA_WIDTH-1:0] wdata,
    output wire                  wfull,
    
    // Read Domain
    input  wire                  rclk,
    input  wire                  rrst_n,
    input  wire                  rinc,
    output wire [DATA_WIDTH-1:0] rdata,
    output wire                  rempty
);

    wire [ADDR_WIDTH-1:0] waddr, raddr;
    wire [ADDR_WIDTH:0]   wptr, rptr, wq2_rptr, rq2_wptr;
    
    // Dual-Port RAM instantiation
    fifomem #(DATA_WIDTH, ADDR_WIDTH) fifomem (
        .wclk(wclk),
        .wclken(winc & ~wfull),
        .waddr(waddr),
        .wdata(wdata),
        .raddr(raddr),
        .rdata(rdata)
    );

    // Read pointer & empty generation
    rptr_empty #(ADDR_WIDTH) rptr_empty (
        .rempty(rempty),
        .raddr(raddr),
        .rptr(rptr),
        .rq2_wptr(rq2_wptr),
        .rinc(rinc),
        .rclk(rclk),
        .rrst_n(rrst_n)
    );

    // Write pointer & full generation
    wptr_full #(ADDR_WIDTH) wptr_full (
        .wfull(wfull),
        .waddr(waddr),
        .wptr(wptr),
        .wq2_rptr(wq2_rptr),
        .winc(winc),
        .wclk(wclk),
        .wrst_n(wrst_n)
    );

    // Sync read pointer into write domain
    sync_r2w #(ADDR_WIDTH) sync_r2w (
        .wq2_rptr(wq2_rptr),
        .rptr(rptr),
        .wclk(wclk),
        .wrst_n(wrst_n)
    );

    // Sync write pointer into read domain
    sync_w2r #(ADDR_WIDTH) sync_w2r (
        .rq2_wptr(rq2_wptr),
        .wptr(wptr),
        .rclk(rclk),
        .rrst_n(rrst_n)
    );

endmodule

// --- Sub-modules ---

module fifomem #(parameter DATASIZE = 8, parameter ADDRSIZE = 4) (
    input  wire                wclk, wclken,
    input  wire [ADDRSIZE-1:0] waddr, raddr,
    input  wire [DATASIZE-1:0] wdata,
    output wire [DATASIZE-1:0] rdata
);
    // RTL memory inference
    reg [DATASIZE-1:0] mem [0:(1<<ADDRSIZE)-1];
    assign rdata = mem[raddr];
    always @(posedge wclk) begin
        if (wclken) mem[waddr] <= wdata;
    end
endmodule

module sync_r2w #(parameter ADDRSIZE = 4) (
    output reg  [ADDRSIZE:0] wq2_rptr,
    input  wire [ADDRSIZE:0] rptr,
    input  wire              wclk, wrst_n
);
    reg [ADDRSIZE:0] wq1_rptr;
    always @(posedge wclk or negedge wrst_n)
        if (!wrst_n) {wq2_rptr, wq1_rptr} <= 0;
        else         {wq2_rptr, wq1_rptr} <= {wq1_rptr, rptr};
endmodule

module sync_w2r #(parameter ADDRSIZE = 4) (
    output reg  [ADDRSIZE:0] rq2_wptr,
    input  wire [ADDRSIZE:0] wptr,
    input  wire              rclk, rrst_n
);
    reg [ADDRSIZE:0] rq1_wptr;
    always @(posedge rclk or negedge rrst_n)
        if (!rrst_n) {rq2_wptr, rq1_wptr} <= 0;
        else         {rq2_wptr, rq1_wptr} <= {rq1_wptr, wptr};
endmodule

module rptr_empty #(parameter ADDRSIZE = 4) (
    output reg                 rempty,
    output wire [ADDRSIZE-1:0] raddr,
    output reg  [ADDRSIZE:0]   rptr,
    input  wire [ADDRSIZE:0]   rq2_wptr,
    input  wire                rinc, rclk, rrst_n
);
    reg  [ADDRSIZE:0] rbin;
    wire [ADDRSIZE:0] rgraynext, rbinnext;
    wire rempty_val;

    always @(posedge rclk or negedge rrst_n)
        if (!rrst_n) {rbin, rptr} <= 0;
        else         {rbin, rptr} <= {rbinnext, rgraynext};

    assign raddr     = rbin[ADDRSIZE-1:0];
    assign rbinnext  = rbin + (rinc & ~rempty);
    assign rgraynext = (rbinnext >> 1) ^ rbinnext;
    
    // Empty when rptr == wptr synchronized
    assign rempty_val = (rgraynext == rq2_wptr);
    always @(posedge rclk or negedge rrst_n)
        if (!rrst_n) rempty <= 1'b1;
        else         rempty <= rempty_val;
endmodule

module wptr_full #(parameter ADDRSIZE = 4) (
    output reg                 wfull,
    output wire [ADDRSIZE-1:0] waddr,
    output reg  [ADDRSIZE:0]   wptr,
    input  wire [ADDRSIZE:0]   wq2_rptr,
    input  wire                winc, wclk, wrst_n
);
    reg  [ADDRSIZE:0] wbin;
    wire [ADDRSIZE:0] wgraynext, wbinnext;
    wire wfull_val;

    always @(posedge wclk or negedge wrst_n)
        if (!wrst_n) {wbin, wptr} <= 0;
        else         {wbin, wptr} <= {wbinnext, wgraynext};

    assign waddr     = wbin[ADDRSIZE-1:0];
    assign wbinnext  = wbin + (winc & ~wfull);
    assign wgraynext = (wbinnext >> 1) ^ wbinnext;
    
    // Full condition based on Cummings' N-bit Gray pointer logic
    assign wfull_val = (wgraynext == {~wq2_rptr[ADDRSIZE:ADDRSIZE-1], wq2_rptr[ADDRSIZE-2:0]});
    
    always @(posedge wclk or negedge wrst_n)
        if (!wrst_n) wfull <= 1'b0;
        else         wfull <= wfull_val;
endmodule
