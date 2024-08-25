module SYS_CTRL
#(parameter OPSIZE = 8, OUT_SIZE = 16, DSIZE = 8, ASIZE = 4)
(
    input   wire                CLK, RST,
    input   wire [OUT_SIZE-1:0] ALU_OUT,
    input   wire [DSIZE-1:0]    RdData,
    input   wire [DSIZE-1:0]    RX_P_DATA,
    input   wire                OUT_VALID, RX_D_VLD, RdData_Valid,
    input   wire                FIFO_FULL,
    output  reg                 ALU_EN, GATE_EN,
    output  reg  [3:0]          ALU_FUN,
    output  reg  [DSIZE-1:0]    FIFO_WR_DATA, WrData,
    output  reg  [ASIZE-1:0]    Address,
    output  reg                 WrEn, RdEn,
    output  reg                 FIFO_W_INC
);

localparam  [3:0]   F0 = 'b0000,
                    W_Addr = 'b0001,
                    W_Data = 'b0011,
                    R_Addr = 'b0010,
                    OP1 = 'b0110,
                    OP1_2 = 'b0111,
                    OP2 = 'b0101,
                    OP2_2 = 'b0100,
                    ALU_FUNC = 'b1100,
                    ALU_OUTPUT = 'b1101,
                    ALU_OUTPUT2 = 'b1111,
                    READ_DATA1 = 'b1110,
                    READ_DATA2 = 'b1010;

                    
reg [3:0] current_state, next_state;
reg read_addr_en, op1_addr_en, op2_addr_en, t_FIFO_W_INC;
reg [DSIZE-1:0] t_FIFO_WR_DATA;

always @(posedge CLK or negedge RST)
begin
    if (!RST)
    begin
        current_state <= F0;
        Address <= 'd4;
    end
    else 
    begin
        current_state <= next_state;
        if (read_addr_en)
        begin
            Address <= RX_P_DATA;
        end 
        if (op1_addr_en)
            Address <= 'b0;
        if (op2_addr_en)
            Address <= 'b1;
    end
end

always @ (*)
begin
    ALU_EN = 'b0;
    GATE_EN = 'b0;
    ALU_FUN = 'b0;
    WrData = 'b0;
    WrEn = 'b0;
    RdEn = 'b0;
    read_addr_en = 'b0;
    op1_addr_en = 'b0;
    op2_addr_en = 'b0;
    FIFO_WR_DATA = 'b0;
    FIFO_W_INC = 'b0;
    
    case (current_state)
        F0 :    begin
                    if (RX_D_VLD)
                    begin
                        case (RX_P_DATA)
                            'hAA : next_state = W_Addr;
                            'hBB :  next_state = R_Addr;
                            'hCC :  next_state = OP1;
                            'hDD :  next_state = ALU_FUNC;
                            default: next_state = F0;   
                        endcase
                    end
                    else
                        next_state = F0;
                end
        W_Addr : begin
                    if (RX_D_VLD)
                    begin
                        next_state = W_Data;
                        read_addr_en = 1'b1;
                    end
                    else
                    begin
                        next_state = W_Addr;
                        read_addr_en = 1'b0;
                    end
                end
        W_Data : begin
                    if (RX_D_VLD)
                    begin
                        next_state = F0;
                        WrData = RX_P_DATA;
                        WrEn = 1'b1;
                    end
                    else
                    begin
                        next_state = W_Data;
                        WrData = 'b0;
                        WrEn = 1'b0;
                    end
                end
        R_Addr : begin
                    if (RX_D_VLD)
                    begin
                        read_addr_en = 1'b1;
                        next_state = READ_DATA1;
                    end
                    else
                    begin
                        read_addr_en = 1'b0;
                        next_state = R_Addr; 
                    end
                end
        READ_DATA1 : begin
                        RdEn = 1'b1;
                        next_state = READ_DATA2;
                    end
        READ_DATA2 : begin
                        FIFO_WR_DATA = RdData;
                        if (!FIFO_FULL && RdData_Valid)
                        begin
                            FIFO_W_INC = 1'b1;
                            next_state = F0;
                        end
                        else
                        begin
                            FIFO_W_INC = 1'b0;
                            next_state = READ_DATA2;
                        end
                    end
        OP1 :   begin
                    if (RX_D_VLD)
                    begin
                        op1_addr_en = 'b1;
                        next_state = OP1_2;
                    end
                    else
                    begin
                        op1_addr_en = 'b0;
                        next_state = OP1;
                    end
                end
        OP1_2 : begin
                    WrEn = 'b1;
                    WrData = RX_P_DATA;
                    next_state = OP2;
                end
        OP2 :   begin
                    if (RX_D_VLD)
                    begin
                        op2_addr_en = 'b1;
                        next_state = OP2_2;
                    end
                    else
                    begin
                        next_state = OP2;
                        op2_addr_en = 'b0;
                    end
                end
        OP2_2 : begin
                    WrEn = 'b1;
                    WrData = RX_P_DATA;
                    next_state = ALU_FUNC;
                end
        ALU_FUNC : begin
                    if (RX_D_VLD)
                    begin
                        ALU_FUN = RX_P_DATA;
                        WrEn = 'b1;
                        ALU_EN = 1'b1;
                        GATE_EN = 1'b1;
                    end
                    else
                    begin
                        WrEn = 'b0;
                        ALU_FUN = 'b0;
                        ALU_EN = 1'b0;
                        GATE_EN = 1'b0;
                    end
                    if (OUT_VALID)
                        next_state = ALU_OUTPUT;
                    else
                        next_state = ALU_FUNC;
                end
        ALU_OUTPUT : begin
                        GATE_EN = 'b1;
                        FIFO_WR_DATA = ALU_OUT[((OUT_SIZE/2)-1):0];
                        if (!FIFO_FULL)
                        begin
                            FIFO_W_INC = 1'b1;
                            if (ALU_OUT > 'd255)
                                next_state = ALU_OUTPUT2;
                            else
                                next_state = F0;
                        end
                        else
                        begin
                            FIFO_W_INC = 1'b0;
                            next_state = ALU_OUTPUT;
                        end
                    end
        ALU_OUTPUT2 :   begin
                            FIFO_WR_DATA = ALU_OUT[(OUT_SIZE-1):(OUT_SIZE/2)];
                            GATE_EN = 'b1;
                            if (!FIFO_FULL)
                            begin
                                FIFO_W_INC = 1'b1;
                                next_state = F0;
                            end
                            else
                            begin
                                FIFO_W_INC = 1'b0;
                                next_state = ALU_OUTPUT2;
                            end
                        end
        default : next_state = F0;
    endcase
end



endmodule
