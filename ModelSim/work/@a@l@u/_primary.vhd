library verilog;
use verilog.vl_types.all;
entity ALU is
    generic(
        OPSIZE          : integer := 8;
        OUT_SIZE        : integer := 16
    );
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        EN              : in     vl_logic;
        A               : in     vl_logic_vector;
        B               : in     vl_logic_vector;
        ALU_FUN         : in     vl_logic_vector(3 downto 0);
        ALU_OUT         : out    vl_logic_vector;
        OUT_VALID       : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of OPSIZE : constant is 1;
    attribute mti_svvh_generic_type of OUT_SIZE : constant is 1;
end ALU;
