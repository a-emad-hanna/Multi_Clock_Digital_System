library verilog;
use verilog.vl_types.all;
entity FIFO_RD is
    generic(
        PTR_SIZE        : integer := 4
    );
    port(
        rclk            : in     vl_logic;
        rrst_n          : in     vl_logic;
        rinc            : in     vl_logic;
        sync_wr_ptr     : in     vl_logic_vector;
        raddr           : out    vl_logic_vector;
        rptr            : out    vl_logic_vector;
        rempty          : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of PTR_SIZE : constant is 1;
end FIFO_RD;
