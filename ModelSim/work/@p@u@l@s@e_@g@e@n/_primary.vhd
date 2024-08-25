library verilog;
use verilog.vl_types.all;
entity PULSE_GEN is
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        LVL_SIG         : in     vl_logic;
        PULSE_SIG       : out    vl_logic
    );
end PULSE_GEN;
