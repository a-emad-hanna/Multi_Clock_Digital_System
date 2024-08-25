module UART_RX_start_checker 
(
    input  wire CLK, RST, EN,
    input  wire sampled_bit, glitch_rst,
    output reg  start_glitch
);

always @(posedge CLK or negedge RST)
begin
    if (!RST)
    begin
        start_glitch <= 1'b0;
    end
    else if (!glitch_rst)
            start_glitch <= 1'b0;
    else if (EN)
    begin
        if (sampled_bit == 1'b1)
            start_glitch <= 1'b1;
        else
            start_glitch <= 1'b0;
    end
end
endmodule