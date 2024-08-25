library verilog;
use verilog.vl_types.all;
entity UART_RX_deserializer is
    generic(
        DSIZE           : integer := 8
    );
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        EN              : in     vl_logic;
        sampled_bit     : in     vl_logic;
        P_DATA          : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DSIZE : constant is 1;
end UART_RX_deserializer;
