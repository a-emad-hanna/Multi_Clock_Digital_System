library verilog;
use verilog.vl_types.all;
entity UART_TX_TOP is
    generic(
        DATA_WIDTH      : integer := 8
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        parity_enable   : in     vl_logic;
        parity_type     : in     vl_logic;
        parallel_data   : in     vl_logic_vector;
        data_valid      : in     vl_logic;
        tx_out          : out    vl_logic;
        busy            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
end UART_TX_TOP;
