library verilog;
use verilog.vl_types.all;
entity UART_RX_edge_bit_counter is
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        EN              : in     vl_logic;
        COUNT_RST       : in     vl_logic;
        PRESCALE        : in     vl_logic_vector(5 downto 0);
        EDGE_COUNT      : out    vl_logic_vector(4 downto 0);
        BIT_COUNT       : out    vl_logic_vector(3 downto 0)
    );
end UART_RX_edge_bit_counter;
