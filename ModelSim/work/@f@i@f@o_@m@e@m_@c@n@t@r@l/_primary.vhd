library verilog;
use verilog.vl_types.all;
entity FIFO_MEM_CNTRL is
    generic(
        DSIZE           : integer := 8;
        PTR_SIZE        : integer := 4
    );
    port(
        wclk            : in     vl_logic;
        wfull           : in     vl_logic;
        winc            : in     vl_logic;
        waddr           : in     vl_logic_vector;
        raddr           : in     vl_logic_vector;
        wdata           : in     vl_logic_vector;
        rdata           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DSIZE : constant is 1;
    attribute mti_svvh_generic_type of PTR_SIZE : constant is 1;
end FIFO_MEM_CNTRL;
