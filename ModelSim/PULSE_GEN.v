module PULSE_GEN
(
    input wire CLK, RST, LVL_SIG,
    output reg PULSE_SIG
);

reg rcv_flop, pls_flop;

always @(posedge CLK or negedge RST)
begin
    if (!RST)
    begin
        rcv_flop <= 1'b0;
        pls_flop <= 1'b0;
    end
    else
    begin
        rcv_flop <= LVL_SIG;
        pls_flop <= rcv_flop;
    end
end

always @(*)
begin
    PULSE_SIG = rcv_flop & ~pls_flop;
end

endmodule