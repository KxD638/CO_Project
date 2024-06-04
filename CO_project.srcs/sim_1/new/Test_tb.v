`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/23 00:59:54
// Design Name: 
// Module Name: Test_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Test_tb(

    );
    reg [7:0] PC;
    reg [7:0] imm;
    wire [7:0] result;
    
    Test utest(PC, imm, result);
    
    initial begin
    PC = 8'b0000_0001;
    imm = 8'b1111_1100;//0000_0100
    #10 $finish;
    end
endmodule
