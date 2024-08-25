library verilog;
use verilog.vl_types.all;
entity System_Top_tb is
    generic(
        CLK_PERIOD_1    : integer := 20;
        CLK_PERIOD_2    : real    := 2.777778e+002;
        OPSIZE          : integer := 8;
        OUT_SIZE        : vl_notype;
        DSIZE           : integer := 8;
        ASIZE           : integer := 4;
        NUM_STAGES      : integer := 2
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CLK_PERIOD_1 : constant is 1;
    attribute mti_svvh_generic_type of CLK_PERIOD_2 : constant is 1;
    attribute mti_svvh_generic_type of OPSIZE : constant is 1;
    attribute mti_svvh_generic_type of OUT_SIZE : constant is 3;
    attribute mti_svvh_generic_type of DSIZE : constant is 1;
    attribute mti_svvh_generic_type of ASIZE : constant is 1;
    attribute mti_svvh_generic_type of NUM_STAGES : constant is 1;
end System_Top_tb;
