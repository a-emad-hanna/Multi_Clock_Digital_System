module UART_RX_stop_checker 
(
    input  wire CLK, RST, EN,
    input  wire sampled_bit, error_rst,
    output reg  stop_error
);

always @(posedge CLK or negedge RST)
begin
    if (!RST)
    begin
        stop_error <= 1'b0;
    end
    else if (!error_rst)
        stop_error <= 1'b0;
    else if (EN)
    begin
        if (sampled_bit == 1'b0)
            stop_error <= 1'b1;
        else
            stop_error <= 1'b0;
    end
end
endmodule