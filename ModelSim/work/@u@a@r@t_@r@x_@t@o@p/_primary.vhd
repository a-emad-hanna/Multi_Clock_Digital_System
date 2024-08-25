library verilog;
use verilog.vl_types.all;
entity UART_RX_TOP is
    generic(
        DSIZE           : integer := 8
    );
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        PAR_EN          : in     vl_logic;
        PAR_TYP         : in     vl_logic;
        RX_IN           : in     vl_logic;
        PRESCALE        : in     vl_logic_vector(5 downto 0);
        DATA_VALID      : out    vl_logic;
        Stop_Error      : out    vl_logic;
        Parity_Error    : out    vl_logic;
        P_DATA          : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DSIZE : constant is 1;
end UART_RX_TOP;
