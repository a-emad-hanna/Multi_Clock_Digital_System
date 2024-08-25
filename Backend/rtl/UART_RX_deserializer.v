module UART_RX_deserializer
#(parameter DSIZE = 8)
(
    input   wire                CLK, RST, EN,
    input   wire                sampled_bit,
    output  reg [DSIZE-1:0]     P_DATA
);

always @(posedge CLK or negedge RST)
begin
    if (!RST)
    begin
        P_DATA <= 8'b0;
    end
    else if (EN)
    begin
        P_DATA <= {sampled_bit, P_DATA[7:1]};
    end
end

endmodule