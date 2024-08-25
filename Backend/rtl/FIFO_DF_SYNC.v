module FIFO_DF_SYNC
#(parameter PTR_SIZE = 4)
(
    input wire CLK, RST,
    input wire [PTR_SIZE-1:0] in,
    output reg [PTR_SIZE-1:0] out
);

reg [PTR_SIZE-1:0] Q1;

always @(posedge CLK or negedge RST)
begin
    if (!RST)
    begin
        out <= 1'b0;
        Q1 <= 1'b0;
    end
    else
    begin
        Q1 <= in;
        out <= Q1;
    end
end

endmodule