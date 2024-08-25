library verilog;
use verilog.vl_types.all;
entity FIFO_TOP is
    generic(
        DSIZE           : integer := 8;
        PTR_SIZE        : integer := 4
    );
    port(
        wclk            : in     vl_logic;
        rclk            : in     vl_logic;
        wrst_n          : in     vl_logic;
        rrst_n          : in     vl_logic;
        rinc            : in     vl_logic;
        winc            : in     vl_logic;
        wdata           : in     vl_logic_vector;
        rdata           : out    vl_logic_vector;
        wfull           : out    vl_logic;
        rempty          : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DSIZE : constant is 1;
    attribute mti_svvh_generic_type of PTR_SIZE : constant is 1;
end FIFO_TOP;
