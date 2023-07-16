`timescale 1ns / 1ps


module alu_8bit_tb();
reg [7:0]A,B;
reg [3:0]OPR_CODE;
wire [16:0]OUTPUT;

alu_8bit dut(.A(A), .B(B), .OPR_CODE(OPR_CODE), .OUTPUT(OUTPUT));

initial begin
    A = 8'b01000100;   // 68
    B = 8'b10001000;   // 136
end

initial begin
    #100 OPR_CODE = 4'b0000;
    #100 OPR_CODE = 4'b0001;
    #100 OPR_CODE = 4'b0010;
    #100 OPR_CODE = 4'b0011;
    #100 OPR_CODE = 4'b0100;
    #100 OPR_CODE = 4'b0101;
    #100 OPR_CODE = 4'b0110;
    #100 OPR_CODE = 4'b0111;
    #100 OPR_CODE = 4'b1000;
end

endmodule
