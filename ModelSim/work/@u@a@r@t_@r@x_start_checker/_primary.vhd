library verilog;
use verilog.vl_types.all;
entity UART_RX_start_checker is
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        EN              : in     vl_logic;
        sampled_bit     : in     vl_logic;
        glitch_rst      : in     vl_logic;
        start_glitch    : out    vl_logic
    );
end UART_RX_start_checker;
