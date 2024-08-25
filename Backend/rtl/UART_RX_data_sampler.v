module UART_RX_data_sampler
(
    input   wire    CLK, RST, EN,
    input   wire    RX_IN,
    output  reg     sampled_bit
);

localparam  [2:0]   idle = 'b000,
                    s0 = 'b001,
                    s1 = 'b011,
                    s00 = 'b010,
                    s10 = 'b110,
                    s01 = 'b111,
                    s11 = 'b101;

reg [2:0]  current_state, next_state;

always @(posedge CLK or negedge RST)
begin
    if (!RST)
    begin
        current_state <= idle;
    end
    else if (EN)
    begin
        current_state <= next_state;
    end
end

always @ (*)
begin
    case (current_state)
        idle :  begin
                    sampled_bit = 'b0;
                    if (RX_IN == 1'b1)
                        next_state = s1;
                    else
                        next_state = s0;
                end
        s0 :  begin
                    sampled_bit = 'b0;
                    if (RX_IN == 1'b1)
                        next_state = s10;
                    else
                        next_state = s00;
                end
        s1 :  begin
                    sampled_bit = 'b0;
                    if (RX_IN == 1'b1)
                        next_state = s11;
                    else
                        next_state = s01;
                end
        s10 :  begin
                    next_state = idle;
                    if (RX_IN == 1'b1)
                        sampled_bit = 'b1;
                    else
                        sampled_bit = 'b0;
                end
        s01 :  begin
                    next_state = idle;
                    if (RX_IN == 1'b1)
                        sampled_bit = 'b1;
                    else
                        sampled_bit = 'b0;
                end
        s00 :  begin
                    next_state = idle;
                    sampled_bit = 'b0;
                end
        s11 :  begin
                    next_state = idle;
                    sampled_bit = 'b1;
                end
        default:begin
                    next_state = idle;
                    sampled_bit = 'b0;
                end
    endcase
end

endmodule