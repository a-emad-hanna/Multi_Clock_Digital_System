module UART_RX_TOP 
#(parameter DSIZE = 8)
(
    input   wire                    CLK, RST,
    input   wire                    PAR_EN, PAR_TYP,
    input   wire                    RX_IN,
    input   wire    [5:0]           PRESCALE,
    output  wire                    DATA_VALID, Stop_Error, Parity_Error,
    output  wire    [DSIZE-1:0]     P_DATA
);

wire par_en, start_glitch, count_rst, glitch_rst, par_err_rst, stop_err_rst;
wire start_check_en, stop_check_en, par_check_en, deserializer_en, counter_en, sampler_en;
wire sampled_bit;
wire [4:0]  edge_count;
wire [3:0]  bit_count;

UART_RX_FSM F1
(
    .CLK(CLK),
    .RST(RST),
    .PAR_EN(PAR_EN),
    .RX_IN(RX_IN),
    .START_GLITCH(start_glitch),
    .STOP_ERR(Stop_Error),
    .PAR_ERR(Parity_Error),
    .BIT_COUNT(bit_count),
    .EDGE_COUNT(edge_count),
    .PRESCALE(PRESCALE),
    .DATA_VALID(DATA_VALID),
    .START_CHECK_EN(start_check_en),
    .STOP_CHECK_EN(stop_check_en),
    .PAR_CHECK_EN(par_check_en),
    .DESERIALIZER_EN(deserializer_en),
    .COUNTER_EN(counter_en),
    .SAMPLER_EN(sampler_en),
    .COUNT_RST(count_rst),
    .GLITCH_RST(glitch_rst),
    .PAR_ERR_RST(par_err_rst),
    .STOP_ERR_RST(stop_err_rst)
);

UART_RX_data_sampler D1
(
    .CLK(CLK),
    .RST(RST),
    .EN(sampler_en),
    .RX_IN(RX_IN),
    .sampled_bit(sampled_bit)
);

UART_RX_deserializer #(.DSIZE(DSIZE)) D2
(
    .CLK(CLK),
    .RST(RST),
    .EN(deserializer_en),
    .sampled_bit(sampled_bit),
    .P_DATA(P_DATA)
);

UART_RX_edge_bit_counter E1
(
    .CLK(CLK),
    .RST(RST),
    .EN(counter_en),
    .COUNT_RST(count_rst),
    .PRESCALE(PRESCALE),
    .EDGE_COUNT(edge_count),
    .BIT_COUNT(bit_count)
);


UART_RX_parity_checker P1
(
    .CLK(CLK),
    .RST(RST),
    .EN(par_check_en),
    .PARITY_TYPE(PAR_TYP),
    .SAMPLED_BITS(P_DATA),
    .SAMPLED_PARITY_BIT(sampled_bit),
    .PARITY_ERROR(Parity_Error),
    .ERR_RST(par_err_rst)
);

UART_RX_start_checker S1
(
    .CLK(CLK),
    .RST(RST),
    .EN(start_check_en),
    .sampled_bit(sampled_bit),
    .start_glitch(start_glitch),
    .glitch_rst(glitch_rst)
);

UART_RX_stop_checker S2
(
    .CLK(CLK),
    .RST(RST),
    .EN(stop_check_en),
    .sampled_bit(sampled_bit),
    .stop_error(Stop_Error),
    .error_rst(stop_err_rst)
);

    
endmodule