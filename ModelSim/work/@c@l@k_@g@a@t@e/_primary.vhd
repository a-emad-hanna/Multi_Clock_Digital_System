library verilog;
use verilog.vl_types.all;
entity CLK_GATE is
    port(
        CLK             : in     vl_logic;
        EN              : in     vl_logic;
        GATED_CLK       : out    vl_logic
    );
end CLK_GATE;
