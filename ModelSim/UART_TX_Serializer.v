module UART_TX_Serializer
# (parameter DATA_WIDTH = 8, parameter COUNTER_WIDTH = 3)
(
    input   wire                        CLK, RST,
    input   wire    [DATA_WIDTH-1:0]    P_DATA,
    input   wire                        DATA_VALID,
    input   wire                        EN,
    output  reg                         S_DATA,
    output  reg                         DONE
);

reg [COUNTER_WIDTH:0] count;
reg [DATA_WIDTH-1:0] temp_registers;

always @(posedge CLK or negedge RST)
begin
    if (!RST)
    begin
        count <= 'b0;
        S_DATA <= 'b0;
        DONE <= 'b0;
        temp_registers <= 'b0;
    end
    else
    begin
        if (DATA_VALID & ~EN)
            temp_registers <= P_DATA;
        else if (EN)
        begin
            if (count < DATA_WIDTH)
            begin
                count <= count + 1'b1;
                S_DATA <= temp_registers[count];
                if (count == DATA_WIDTH - 1)
                    DONE <= 'b1;
            end
            else
            begin
                count <= 'b0;
                DONE <= 'b0;
            end
        end 
    end
end
    
endmodule