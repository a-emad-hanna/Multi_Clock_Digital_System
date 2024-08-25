library verilog;
use verilog.vl_types.all;
entity System_Top is
    generic(
        OPSIZE          : integer := 8;
        OUT_SIZE        : integer := 16;
        DSIZE           : integer := 8;
        ASIZE           : integer := 4;
        NUM_STAGES      : integer := 2
    );
    port(
        REF_CLK         : in     vl_logic;
        UART_CLK        : in     vl_logic;
        RST             : in     vl_logic;
        RX_IN           : in     vl_logic;
        Stop_Error      : out    vl_logic;
        Parity_Error    : out    vl_logic;
        TX_OUT          : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of OPSIZE : constant is 1;
    attribute mti_svvh_generic_type of OUT_SIZE : constant is 1;
    attribute mti_svvh_generic_type of DSIZE : constant is 1;
    attribute mti_svvh_generic_type of ASIZE : constant is 1;
    attribute mti_svvh_generic_type of NUM_STAGES : constant is 1;
end System_Top;
