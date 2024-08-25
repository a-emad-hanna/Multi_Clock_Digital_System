module UART_RX_FSM
(
    input   wire            CLK, RST,
    input   wire            RX_IN, 
    input   wire            PAR_EN,
    input   wire            START_GLITCH, STOP_ERR, PAR_ERR,
    input   wire    [3:0]   BIT_COUNT,
    input   wire    [4:0]   EDGE_COUNT,
    input   wire    [5:0]   PRESCALE,
    output  reg             DATA_VALID, 
    output  reg             COUNT_RST, GLITCH_RST, PAR_ERR_RST, STOP_ERR_RST,
    output  reg             START_CHECK_EN, STOP_CHECK_EN,
    output  reg             PAR_CHECK_EN, DESERIALIZER_EN,
    output  reg             COUNTER_EN, SAMPLER_EN
);

localparam  [3:0]   idle = 'b0000, 
                    start = 'b0001, 
                    sample_start = 'b0011, 
                    data = 'b0010, 
                    sample_data = 'b0110, 
                    parity = 'b0100,
                    sample_parity = 'b0101,
                    stop = 'b1101,
                    sample_stop = 'b1111;


reg [3:0] current_state, next_state;
reg [4:0] first_sample;


always @(posedge CLK or negedge RST)
begin
    if (!RST)
    begin
        current_state <= idle;
    end
    else
    begin
        current_state <= next_state;
    end
end

always @ (*)
begin
    DATA_VALID = 1'b0;
    COUNTER_EN = 1'b1;
    SAMPLER_EN = 1'b0;
    DESERIALIZER_EN = 1'b0;
    START_CHECK_EN = 1'b0;
    STOP_CHECK_EN = 1'b0;
    PAR_CHECK_EN = 1'b0;
    COUNT_RST = 1'b1;
    GLITCH_RST = 1'b1;
    PAR_ERR_RST = 1'b1;
    STOP_ERR_RST = 1'b1;

    case (current_state)
        idle :  begin
                    if (RX_IN == 1'b0)
                    begin
                        next_state = start;
                    end
                    else
                    begin
                        COUNTER_EN = 1'b0;
                        next_state = idle;
                    end
                end
        start : begin
                    if (START_GLITCH)
                    begin
                        next_state = idle;
                        GLITCH_RST = 1'b0;
                        COUNT_RST = 1'b0;
                    end
                    else
                    begin
                        case (EDGE_COUNT)
                            first_sample :  next_state = sample_start;
                            (PRESCALE-1) :  next_state = data;
                            default :       next_state = start;    
                        endcase
                    end
                end
        sample_start :  begin
                            SAMPLER_EN = 1'b1;
                            if (EDGE_COUNT == first_sample+3)
                            begin
                                START_CHECK_EN = 1'b1;
                                next_state = start;
                            end
                            else
                                next_state = sample_start;
                        end
        data :  begin
                    case (EDGE_COUNT)
                        first_sample :  next_state = sample_data;
                        (PRESCALE-1) :  if (BIT_COUNT == 'd8)
                                            if (PAR_EN)
                                                next_state = parity;
                                            else
                                                next_state = stop;
                                        else
                                            next_state = data;
                        default:        next_state = data;    
                    endcase
                end
        sample_data :  begin
                            SAMPLER_EN = 1'b1;
                            if (EDGE_COUNT == first_sample+3)
                            begin
                                DESERIALIZER_EN = 1'b1;
                                next_state = data;
                            end
                            else
                                next_state = sample_data;
                        end
        parity :  begin
                        case (EDGE_COUNT)
                            first_sample :  next_state = sample_parity;
                            (PRESCALE-1) :  next_state = stop;
                            default:        next_state = parity;    
                        endcase
                    end
        sample_parity :  begin
                            SAMPLER_EN = 1'b1;
                            if (EDGE_COUNT == first_sample+3)
                            begin
                                PAR_CHECK_EN = 1'b1;
                                next_state = parity;
                            end
                            else
                                next_state = sample_parity;
                        end
        stop :  begin
                    case (EDGE_COUNT)
                        first_sample :  next_state = sample_stop;
                        (PRESCALE-1) :  begin
                                            next_state = idle;
                                            COUNT_RST = 1'b0;
                                            STOP_ERR_RST = 1'b0;
                                            PAR_ERR_RST = 1'b0;
                                            if (STOP_ERR || PAR_ERR)
                                                DATA_VALID = 1'b0;
                                            else
                                                DATA_VALID = 1'b1;
                                        end
                        default:        next_state = stop;    
                    endcase
                end
        sample_stop :  begin
                            SAMPLER_EN = 1'b1;
                            if (EDGE_COUNT == first_sample+3)
                            begin
                                STOP_CHECK_EN = 1'b1;
                                next_state = stop;
                            end
                            else
                                next_state = sample_stop;
                        end 
        default: next_state = idle;
    endcase
end

always @ (*)
begin
    case (PRESCALE)
        'd8 :  first_sample = 'd2;
        'd16 : first_sample = 'd6;
        'd32 : first_sample = 'd14;
        default: first_sample = 'd2;
    endcase
end


endmodule