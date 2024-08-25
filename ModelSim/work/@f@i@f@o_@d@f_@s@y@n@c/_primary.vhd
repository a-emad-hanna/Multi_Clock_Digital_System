library verilog;
use verilog.vl_types.all;
entity FIFO_DF_SYNC is
    generic(
        PTR_SIZE        : integer := 4
    );
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        \in\            : in     vl_logic_vector;
        \out\           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of PTR_SIZE : constant is 1;
end FIFO_DF_SYNC;
