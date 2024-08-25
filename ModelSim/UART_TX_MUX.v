module UART_TX_MUX
(
    input   wire    [2:0]   SELECT,
    input   wire            FIRST,
    input   wire            LAST,
    input   wire            DATA,
    input   wire            PARITY,
    input   wire            IDLE,
    output  reg             OUT
);

always @(*)
begin
    case (SELECT)
        'b000 : OUT = FIRST;
        'b001 : OUT = LAST;
        'b010 : OUT = DATA;
        'b011 : OUT = PARITY;
        'b100 : OUT = IDLE;
        default: OUT = IDLE;
    endcase
end
endmodule