`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/12 16:32:25
// Design Name: 
// Module Name: Imm_Gen
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

//Verilog 支持 imm[31:20] = {12{inst[31]} 这样的语法，但我电脑上不知道为什么会报错，不然代码可以更简洁易读
`include "para.vh"
module Imm_Gen(
    input [31:0] inst,
    output reg [31:0] imm
);

always @(*)
    case(inst[6:0])
        `I, `IL: begin//I
        imm[11:0] = inst[31:20];
        imm[31:12] = (inst[31] == 1'b0) ? 20'h00000 : 20'hfffff;
        end
        `S: begin//S
        imm[11:0] = {inst[31:25], inst[11:7]};
        imm[31:12] = (inst[31] == 1'b0) ? 20'h00000 : 20'hfffff;
        end
        `B: begin//B
        imm[12:0] = {inst[31], inst[7], inst[30:25], inst[11:8], 1'b0};
        imm[31:13] = (inst[31] == 1'b0) ? 19'h00000 : 19'h7ffff;
        end
        `J: begin//J
        imm[20:0] = {inst[31], inst[19:12], inst[20], inst[30:21], 1'b0};
        imm[31:21] = (inst[31] == 1'b0) ? 11'h000 : 11'h7ff;
        end
        `lui, `auipc: begin//U
        imm[19:0] = inst[31:12];
        imm[31:20] = (inst[31] == 1'b0) ? 12'h000 : 12'hfff;
        //imm = {inst[31:12], 12'h000};  我觉得应该这样处理，但RARS上是按上面这样处理的
        end
        default: begin//R
        imm = 32'h0000_0000;
        end
    endcase
endmodule
