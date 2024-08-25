module RegFile 
#(parameter DSIZE = 8, ASIZE = 4)
(
    input  wire                 CLK, RST,
    input  wire  [DSIZE-1:0]    WrData,
    input  wire  [ASIZE-1:0]    Address,
    input  wire                 WrEn, RdEn,
    output reg   [DSIZE-1:0]    RdData,
    output reg                  RdData_Valid,
    output wire  [DSIZE-1:0]    REG0, REG1, REG2, REG3
);

localparam DEPTH = (1 << ASIZE);
reg [DSIZE-1:0] registers [0:DEPTH-1];  
integer i;      

always @(posedge CLK or negedge RST) 
begin
    if (!RST)
    begin
        {RdData, RdData_Valid} <= 'b0;
        for (i = 0; i < DEPTH; i = i + 1) 
        begin
            case (i)
                2: registers[i] <= 'b10000001;
                3: registers[i] <= 'd32;
                default: registers[i] <= 'b0;
            endcase
        end
    end

    else if (WrEn && !RdEn)
        registers[Address] <= WrData;

    else if (RdEn && !WrEn)
    begin
        RdData <= registers[Address];
        RdData_Valid <= 'b1;
    end
    else
        RdData_Valid <= 'b0;
end

assign REG0 = registers[0];
assign REG1 = registers[1];
assign REG2 = registers[2];
assign REG3 = registers[3];



endmodule
