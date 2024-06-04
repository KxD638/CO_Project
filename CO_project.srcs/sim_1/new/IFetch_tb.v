`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/23 00:44:58
// Design Name: 
// Module Name: IFetch_tb
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


module IFetch_tb(

    );
    reg clk;
    reg rst;
    reg [31:0] imm32;//branch/jump target relative offset
    reg Branch;//1'b1 while B-type inst
    reg Condition;//1'b1 while branch condition is satisfied
    reg Jump;//1'b1 while J-type inst
    wire [31:0] inst;//inst fetched from inst memory
    wire [31:0] PC;
    
    initial begin
    clk = 1'b1;
    repeat(20) #5 clk = ~clk;
    end
    
    initial begin
    rst = 1'b0;
    #3 rst = 1'b1;
    end
    
    initial begin
    imm32 = 32'h0000_0000;
    Branch = 1'b0;
    Condition = 1'b0;
    Jump = 1'b0;
    #19 Jump = 1'b1;
    imm32 = 32'h0000_1000;
    #12 Jump = 1'b0;
    Branch = 1'b1;
    Condition = 1'b1;
    imm32 = 32'h0010_0000;
    #13 $finish;
    end
    
    IFetch uif(clk, rst, imm32, Branch, Condition, Jump, inst, PC);
endmodule
