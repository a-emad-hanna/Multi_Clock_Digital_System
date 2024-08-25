library verilog;
use verilog.vl_types.all;
entity UART_TX_Parity_Calculator is
    generic(
        DATA_WIDTH      : integer := 8
    );
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        DATA            : in     vl_logic_vector;
        \TYPE\          : in     vl_logic;
        EN              : in     vl_logic;
        PARITY_BIT      : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
end UART_TX_Parity_Calculator;
