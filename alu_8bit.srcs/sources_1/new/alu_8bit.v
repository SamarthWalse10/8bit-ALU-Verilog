`timescale 1ns / 1ps


module alu_8bit(A,B,OPR_CODE,OUTPUT);
input [7:0]A,B;
input [3:0]OPR_CODE;
output reg [16:0]OUTPUT;

always @(*) begin
    case(OPR_CODE)
        4'b0000 : OUTPUT <= A + B;
        4'b0001 : OUTPUT <= A - B;//
        4'b0010 : OUTPUT <= A * B;
        4'b0011 : OUTPUT <= A >> 1;
        4'b0100 : OUTPUT <= A << 1;
        4'b0101 : OUTPUT <= ~(A & B);
        4'b0110 : OUTPUT <= ~(A | B);
        4'b0111 : OUTPUT <= A ^ B;
        4'b1000 : OUTPUT <= ~(A ^ B);
        default : OUTPUT <= 16'bxxxxxxxxxxxxxxxx;
    endcase
end

endmodule
