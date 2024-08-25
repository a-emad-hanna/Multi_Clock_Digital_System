library verilog;
use verilog.vl_types.all;
entity SYS_CTRL is
    generic(
        OPSIZE          : integer := 8;
        OUT_SIZE        : integer := 16;
        DSIZE           : integer := 8;
        ASIZE           : integer := 4
    );
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        ALU_OUT         : in     vl_logic_vector;
        RdData          : in     vl_logic_vector;
        RX_P_DATA       : in     vl_logic_vector;
        OUT_VALID       : in     vl_logic;
        RX_D_VLD        : in     vl_logic;
        RdData_Valid    : in     vl_logic;
        FIFO_FULL       : in     vl_logic;
        ALU_EN          : out    vl_logic;
        GATE_EN         : out    vl_logic;
        ALU_FUN         : out    vl_logic_vector(3 downto 0);
        FIFO_WR_DATA    : out    vl_logic_vector;
        WrData          : out    vl_logic_vector;
        Address         : out    vl_logic_vector;
        WrEn            : out    vl_logic;
        RdEn            : out    vl_logic;
        FIFO_W_INC      : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of OPSIZE : constant is 1;
    attribute mti_svvh_generic_type of OUT_SIZE : constant is 1;
    attribute mti_svvh_generic_type of DSIZE : constant is 1;
    attribute mti_svvh_generic_type of ASIZE : constant is 1;
end SYS_CTRL;
