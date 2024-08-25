module UART_RX_parity_checker
(
    input   wire            CLK, RST, EN,
    input   wire            PARITY_TYPE,
    input   wire    [7:0]   SAMPLED_BITS,
    input   wire            SAMPLED_PARITY_BIT,
    input   wire            ERR_RST,
    output  reg             PARITY_ERROR
);

reg result;

always @(posedge CLK or negedge RST)
begin
    if (!RST)
    begin
        PARITY_ERROR <= 1'b0;
    end
    else if (!ERR_RST)
        PARITY_ERROR <= 1'b0;
    else if (EN)
    begin
        if (PARITY_TYPE)   //odd
            PARITY_ERROR <= ~result;
        else               //even
            PARITY_ERROR <= result;
    end
end

always @(*)
begin
    result = ^{SAMPLED_BITS, SAMPLED_PARITY_BIT};
end

endmodule