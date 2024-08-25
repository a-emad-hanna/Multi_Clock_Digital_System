library verilog;
use verilog.vl_types.all;
entity FIFO_WR is
    generic(
        PTR_SIZE        : integer := 4
    );
    port(
        sync_rd_ptr     : in     vl_logic_vector;
        winc            : in     vl_logic;
        wclk            : in     vl_logic;
        wrst_n          : in     vl_logic;
        wfull           : out    vl_logic;
        waddr           : out    vl_logic_vector;
        wptr            : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of PTR_SIZE : constant is 1;
end FIFO_WR;
