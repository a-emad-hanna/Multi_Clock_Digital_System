library verilog;
use verilog.vl_types.all;
entity UART_RX_parity_checker is
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        EN              : in     vl_logic;
        PARITY_TYPE     : in     vl_logic;
        SAMPLED_BITS    : in     vl_logic_vector(7 downto 0);
        SAMPLED_PARITY_BIT: in     vl_logic;
        ERR_RST         : in     vl_logic;
        PARITY_ERROR    : out    vl_logic
    );
end UART_RX_parity_checker;
