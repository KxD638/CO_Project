`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/25 21:23:58
// Design Name: 
// Module Name: Controller_tb
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


module Controller_tb(

    );
    reg [31:0] inst;
    wire Jump;//1'b1 while J-type inst
    wire Branch;//1'b1 while B-type inst
    wire MemRead;//1'b1 while need to read from Data Memory
    wire MemtoReg;//1'b1 while send the data from Data Memory to Registers, 0 while send the data from ALU
    wire [2:0] ALUOp;//indicate what type inst is
    wire MemWrite;//1'b1 while need to write to Data Memory
    wire ALUSrc;//1'b1 while select immediate as the operand of ALU, otherwise select rs2Data
    wire RegWrite;//1'b1 while need to write to Registers
    
    Controller ucon(inst, Jump, Branch, MemRead, MemtoReg, ALUOp, MemWrite, ALUSrc, RegWrite);
    
    initial begin
    inst = 32'h007302b3;
    #5 inst = 32'h407302b3;
    #5 inst = 32'hfff30293;
    #5 inst = 32'hffc2a303;
    #5 inst = 32'hfe532e23;
    #5 inst = 32'h00730c63;
    #5 inst = 32'h0040036f;
    #5 $finish;
    end
endmodule
