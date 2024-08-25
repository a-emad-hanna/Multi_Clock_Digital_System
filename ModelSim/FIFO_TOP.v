module FIFO_TOP 
#(parameter DSIZE = 8, PTR_SIZE = 4)
(   
    input   wire                    wclk,  rclk,
    input   wire                    wrst_n, rrst_n,
    input   wire                    rinc,  winc,
    input   wire    [DSIZE-1:0]     wdata,    
    output  wire    [DSIZE-1:0]     rdata,
    output  wire                    wfull,
    output  wire                    rempty
);

wire [PTR_SIZE-2:0] waddr, raddr;
wire [PTR_SIZE-1:0] WPTR, RPTR, S_WPTR, S_RPTR;

FIFO_DF_SYNC #(.PTR_SIZE(PTR_SIZE)) sync_w2r 
(
    .CLK(rclk), .RST(rrst_n),
    .in(WPTR), .out(S_WPTR)
);

FIFO_DF_SYNC #(.PTR_SIZE(PTR_SIZE)) sync_r2w 
(
    .CLK(wclk), .RST(wrst_n),
    .in(RPTR), .out(S_RPTR)
);

FIFO_MEM_CNTRL #(.DSIZE(DSIZE), .PTR_SIZE(PTR_SIZE)) fifomem
(
    .rdata(rdata), .wdata(wdata),
    .waddr(waddr), .raddr(raddr),
    .winc(winc), .wfull(wfull),
    .wclk(wclk)
);

FIFO_RD #(.PTR_SIZE(PTR_SIZE)) rptr_empty
(
    .rempty(rempty),
    .raddr(raddr),
    .rptr(RPTR), .sync_wr_ptr(S_WPTR),
    .rinc(rinc), .rclk(rclk),
    .rrst_n(rrst_n)
);

FIFO_WR #(.PTR_SIZE(PTR_SIZE)) wptr_full
(
    .wfull(wfull), .waddr(waddr),
    .wptr(WPTR), .sync_rd_ptr(S_RPTR),
    .winc(winc), .wclk(wclk),
    .wrst_n(wrst_n)
);

endmodule