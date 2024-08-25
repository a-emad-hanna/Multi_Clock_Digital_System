library verilog;
use verilog.vl_types.all;
entity UART_RX_FSM is
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        RX_IN           : in     vl_logic;
        PAR_EN          : in     vl_logic;
        START_GLITCH    : in     vl_logic;
        STOP_ERR        : in     vl_logic;
        PAR_ERR         : in     vl_logic;
        BIT_COUNT       : in     vl_logic_vector(3 downto 0);
        EDGE_COUNT      : in     vl_logic_vector(4 downto 0);
        PRESCALE        : in     vl_logic_vector(5 downto 0);
        DATA_VALID      : out    vl_logic;
        COUNT_RST       : out    vl_logic;
        GLITCH_RST      : out    vl_logic;
        PAR_ERR_RST     : out    vl_logic;
        STOP_ERR_RST    : out    vl_logic;
        START_CHECK_EN  : out    vl_logic;
        STOP_CHECK_EN   : out    vl_logic;
        PAR_CHECK_EN    : out    vl_logic;
        DESERIALIZER_EN : out    vl_logic;
        COUNTER_EN      : out    vl_logic;
        SAMPLER_EN      : out    vl_logic
    );
end UART_RX_FSM;
