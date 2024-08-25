module FIFO_MEM_CNTRL 
#(parameter DSIZE = 8, PTR_SIZE = 4)
(   
    input   wire                    wclk,
    input   wire                    wfull, winc,
    input   wire    [PTR_SIZE-2:0]  waddr, raddr,
    input   wire    [DSIZE-1:0]     wdata,
    output  reg     [DSIZE-1:0]     rdata
);

localparam DEPTH = (1 << PTR_SIZE);
reg [DSIZE-1:0] mem [0:DEPTH-1];

always @(*)
begin
    rdata = mem[raddr];
end

always @(posedge wclk)
begin
    if (winc && !wfull) 
        mem[waddr] <= wdata;
end

endmodule