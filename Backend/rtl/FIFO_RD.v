module FIFO_RD
#(parameter PTR_SIZE = 4)
(
    input   wire                        rclk, rrst_n,
    input   wire                        rinc,
    input   wire    [PTR_SIZE-1:0]      sync_wr_ptr,
    output  reg     [PTR_SIZE-2:0]      raddr,
    output  reg     [PTR_SIZE-1:0]      rptr,
    output  reg                         rempty
);

reg [PTR_SIZE-1:0] rbin;
wire [PTR_SIZE-1:0] rgraynext, rbinnext;
wire rempty_val;

always @(posedge rclk or negedge rrst_n)
begin
    if (!rrst_n)
    begin 
        rbin <= 0;
        rptr <= 0;
    end
    else
    begin
        rbin <= rbinnext;
        rptr <= rgraynext;
    end
end

always @(*)
begin
    raddr = rbin[PTR_SIZE-2:0];
end

assign rbinnext = rbin + (rinc & ~rempty);
assign rgraynext = (rbinnext>>1) ^ rbinnext;
assign rempty_val = (rgraynext == sync_wr_ptr);


always @(posedge rclk or negedge rrst_n)
begin
    if (!rrst_n) 
        rempty <= 1'b1;
    else 
        rempty <= rempty_val;
end
endmodule