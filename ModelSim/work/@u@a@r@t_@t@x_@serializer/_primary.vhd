library verilog;
use verilog.vl_types.all;
entity UART_TX_Serializer is
    generic(
        DATA_WIDTH      : integer := 8;
        COUNTER_WIDTH   : integer := 3
    );
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        P_DATA          : in     vl_logic_vector;
        DATA_VALID      : in     vl_logic;
        EN              : in     vl_logic;
        S_DATA          : out    vl_logic;
        DONE            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of COUNTER_WIDTH : constant is 1;
end UART_TX_Serializer;
