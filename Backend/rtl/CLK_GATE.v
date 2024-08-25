module CLK_GATE
(
    input   wire CLK, EN,
    output  wire GATED_CLK
);

/*
reg latch_out;

always @ (CLK or EN)
begin
    if (!CLK)
        latch_out <= EN;
end

assign GATED_CLK = CLK & latch_out;
*/


TLATNCAX12M U0_TLATNCAX12M (
.E(EN),
.CK(CLK),
.ECK(GATED_CLK)
);


endmodule
