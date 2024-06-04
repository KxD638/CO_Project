`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/03 07:51:02
// Design Name: 
// Module Name: interClkConv_tb
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


module interClkConv_tb(

    );

    reg cpuclk;
    reg rst;
    reg enter;
    reg interrupt;
    wire clk_inter;
    reg cntclk;
    
    interrupt_clk_convertor uconv(cpuclk, rst, enter, interrupt, clk_inter, cntclk);
    
    initial begin
    cpuclk = 1'b1;
    repeat(31) #10 cpuclk = ~cpuclk;
    #10 $finish;
    end
    
    initial begin
    cntclk = 1'b1;
    #2
    repeat(127) #5 cntclk = ~cntclk;
    end
    
    initial begin
    rst = 1'b1;
    #6 rst = 1'b0;
    #16 rst = 1'b1;
    end
    
    initial begin
    enter = 1'b1;
    #75 enter = 1'b0;
    #80 enter = 1'b1;
    #23 enter = 1'b0;
    #80 enter = 1'b1;
    end
    
    initial begin
    interrupt = 1'b0;
    #45 interrupt = 1'b1;
    #60 interrupt = 1'b0;
    #20 interrupt = 1'b1;
    #80 interrupt = 1'b0;
    end
endmodule
