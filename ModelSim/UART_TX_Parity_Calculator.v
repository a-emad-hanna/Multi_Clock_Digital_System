module UART_TX_Parity_Calculator
# (parameter DATA_WIDTH = 8)
(
    input   wire                        CLK, RST,
    input   wire    [DATA_WIDTH-1:0]    DATA,
    input   wire                        TYPE,
    input   wire                        EN,
    output  reg                         PARITY_BIT
);

//integer i;
reg result;

always @(posedge CLK or negedge RST)
begin
    if (!RST)
    begin
        PARITY_BIT <= 'b0;
    end
    else if (EN)
    begin
        if (TYPE)   //odd
            PARITY_BIT <= ~result;
        else        //even
            PARITY_BIT <= result;
    end
end

always @(*)
begin
    result = ^DATA;
end
endmodule