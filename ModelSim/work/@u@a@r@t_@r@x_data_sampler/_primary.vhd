library verilog;
use verilog.vl_types.all;
entity UART_RX_data_sampler is
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        EN              : in     vl_logic;
        RX_IN           : in     vl_logic;
        sampled_bit     : out    vl_logic
    );
end UART_RX_data_sampler;
