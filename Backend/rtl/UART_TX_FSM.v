module UART_TX_FSM
(
    input   wire            CLK, RST,
    input   wire            DATA_VALID,
    input   wire            PAR_EN,
    input   wire            SER_DONE,
    output  reg             SER_EN,
    output  reg             PAR_CALC_EN,
    output  reg     [2:0]   MUX_SELECT,
    output  reg             BUSY    
);

localparam  [4:0]   IDLE = 5'b00001,
                    START = 5'b00010,
                    DATA = 5'b00100,
                    PARITY = 5'b01000,
                    STOP = 5'b10000;

reg [4:0]  current_state, next_state; 

always @(posedge CLK or negedge RST)
begin
    if (!RST)
    begin
        current_state <= IDLE;
    end
    else
        current_state <= next_state;
end

always @ (*)
begin
    case (current_state)
        IDLE :  begin
                    MUX_SELECT = 'b100;
                    SER_EN = 'b0;
                    BUSY = 'b0;
                    PAR_CALC_EN = 'b0;

                    if (DATA_VALID)
                        next_state = START;
                    else
                        next_state = IDLE;
                end
        
        START : begin
                    MUX_SELECT = 'b000;
                    SER_EN = 'b1;
                    PAR_CALC_EN = 'b1;
                    BUSY = 'b1;
                    next_state = DATA;
                end

        DATA :  begin
                    MUX_SELECT = 'b010;
                    SER_EN = 'b1;
                    PAR_CALC_EN = 'b0;
                    BUSY = 'b1;

                    if (SER_DONE)
                    begin
                        if (PAR_EN)
                            next_state = PARITY;
                        else
                            next_state = STOP;
                    end
                    else
                        next_state = DATA;
                end 

        PARITY : begin
                    SER_EN = 'b0;
                    BUSY = 'b1;
                    PAR_CALC_EN = 'b0;
                    MUX_SELECT = 'b011;
                    next_state = STOP;
                end
        
        STOP : begin
                    SER_EN = 'b0;
                    BUSY = 'b1;
                    MUX_SELECT = 'b001;
                    PAR_CALC_EN = 'b0;
                
                    next_state = IDLE;
                end

        default:    begin
                        MUX_SELECT = 'b100;
                        PAR_CALC_EN = 'b0;
                        SER_EN = 'b0;
                        BUSY = 'b0;
                        next_state = IDLE;
                    end 
    endcase
end

endmodule