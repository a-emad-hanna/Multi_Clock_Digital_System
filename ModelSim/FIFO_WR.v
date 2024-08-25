module FIFO_WR
#(parameter PTR_SIZE = 4)
(
    input wire      [PTR_SIZE-1:0]  sync_rd_ptr,
    input wire                      winc, wclk, wrst_n,
    output reg                      wfull,
    output reg      [PTR_SIZE-2:0]  waddr,
    output reg      [PTR_SIZE-1:0]  wptr
);

reg [PTR_SIZE-1:0] wbin;
wire [PTR_SIZE-1:0] wgraynext, wbinnext;
wire wfull_value;

always @(posedge wclk or negedge wrst_n)
begin
    if (!wrst_n) 
    begin
        wbin <= 0;
        wptr <= 0;
    end
    else
    begin
        wbin <= wbinnext;
        wptr <= wgraynext;
    end
end

always @(*)
begin
    waddr = wbin[PTR_SIZE-2:0];
end

assign wbinnext = wbin + (winc & ~wfull);
assign wgraynext = (wbinnext>>1) ^ wbinnext;
assign wfull_value = (wgraynext=={~sync_rd_ptr[PTR_SIZE-1:PTR_SIZE-2], sync_rd_ptr[PTR_SIZE-3:0]});


always @(posedge wclk or negedge wrst_n)
begin
    if (!wrst_n) 
        wfull <= 1'b0;
    else 
        wfull <= wfull_value;
end

endmodule