library verilog;
use verilog.vl_types.all;
entity UART_TX_FSM is
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        DATA_VALID      : in     vl_logic;
        PAR_EN          : in     vl_logic;
        SER_DONE        : in     vl_logic;
        SER_EN          : out    vl_logic;
        PAR_CALC_EN     : out    vl_logic;
        MUX_SELECT      : out    vl_logic_vector(2 downto 0);
        BUSY            : out    vl_logic
    );
end UART_TX_FSM;
