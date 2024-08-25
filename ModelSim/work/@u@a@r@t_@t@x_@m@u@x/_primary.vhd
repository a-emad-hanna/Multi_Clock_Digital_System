library verilog;
use verilog.vl_types.all;
entity UART_TX_MUX is
    port(
        \SELECT\        : in     vl_logic_vector(2 downto 0);
        FIRST           : in     vl_logic;
        LAST            : in     vl_logic;
        DATA            : in     vl_logic;
        PARITY          : in     vl_logic;
        IDLE            : in     vl_logic;
        \OUT\           : out    vl_logic
    );
end UART_TX_MUX;
