library verilog;
use verilog.vl_types.all;
entity UART_RX_stop_checker is
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        EN              : in     vl_logic;
        sampled_bit     : in     vl_logic;
        error_rst       : in     vl_logic;
        stop_error      : out    vl_logic
    );
end UART_RX_stop_checker;
