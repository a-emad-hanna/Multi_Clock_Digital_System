module ALU 
#(parameter OPSIZE = 8, OUT_SIZE = 16)
(
    input   wire                CLK, RST, EN,
    input   wire [OPSIZE-1:0]   A, B,
    input   wire [3:0]          ALU_FUN,
    output  reg  [OUT_SIZE-1:0] ALU_OUT,
    output  reg                 OUT_VALID
);

reg [OUT_SIZE-1:0] ALU_OUT_comb;

always @ (posedge CLK or negedge RST)
begin
    if (!RST)
    begin
        ALU_OUT <= 0;
        OUT_VALID <= 0;
    end
    else if (EN)
    begin
        ALU_OUT <= ALU_OUT_comb;
        OUT_VALID <= 'b1;
    end
    else
    begin
        OUT_VALID <= 0;
    end
end

always @ (*)
begin
    case (ALU_FUN)
        4'b0000 : ALU_OUT_comb = A + B;
        4'b0001 : ALU_OUT_comb = A - B;
        4'b0010 : ALU_OUT_comb = A * B;
        4'b0011 :   begin 
                        if (B == 0)
                            ALU_OUT_comb = 'b0;
                        else
                            ALU_OUT_comb = A / B;
                    end 
        4'b0100 : ALU_OUT_comb = A & B;
        4'b0101 : ALU_OUT_comb = A | B;
        4'b0110 : ALU_OUT_comb = ~(A & B);
        4'b0111 : ALU_OUT_comb = ~(A | B);
        4'b1000 : ALU_OUT_comb = A ^ B;
        4'b1001 : ALU_OUT_comb = ~(A ^ B);
        4'b1010 : ALU_OUT_comb = (A == B);
        4'b1011 : if (A > B)
                    ALU_OUT_comb = 'd2;
                else
                    ALU_OUT_comb = 'd0; 
        4'b1100 : if (A < B)
                    ALU_OUT_comb = 'd3;
                    else
                    ALU_OUT_comb = 'd0; 
        4'b1101 : ALU_OUT_comb = A >> 1;
        4'b1110 : ALU_OUT_comb = A << 1;
        4'b1111 : ALU_OUT_comb = 'b0;
        default: ALU_OUT_comb = 'b0;
    endcase 
end

endmodule
