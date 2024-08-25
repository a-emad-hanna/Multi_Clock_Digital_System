module UART_RX_edge_bit_counter
(
    input   wire           CLK, RST, EN, COUNT_RST,
    input   wire   [5:0]   PRESCALE,
    output  reg    [4:0]   EDGE_COUNT,
    output  reg    [3:0]   BIT_COUNT
);

always @(posedge CLK or negedge RST)
begin
    if (!RST)
    begin
        EDGE_COUNT <= 5'b0;
        BIT_COUNT <= 5'b0;
    end
    else if (EN)
    begin
        if (!COUNT_RST)
        begin
            EDGE_COUNT <= 5'b0;
            BIT_COUNT <= 5'b0;
        end
        else
        begin
            EDGE_COUNT <= EDGE_COUNT + 1;
            case (PRESCALE)
                'd8 :   begin
                            if (EDGE_COUNT == 'b00111)
                            begin
                                EDGE_COUNT <= 'b0;
                                BIT_COUNT <= BIT_COUNT + 1;
                            end
                        end
                'd16:   begin
                            if (EDGE_COUNT == 'b01111)
                            begin
                                EDGE_COUNT <= 'b0;
                                BIT_COUNT <= BIT_COUNT + 1;
                            end
                        end
                'd32:   begin
                            if (EDGE_COUNT == 'b11111)
                            begin
                                EDGE_COUNT <= 'b0;
                                BIT_COUNT <= BIT_COUNT + 1;
                            end
                        end
                default: BIT_COUNT <= 'b0;
            endcase
        end
    end
end
    
endmodule