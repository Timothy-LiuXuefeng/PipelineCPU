`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Tsinghua University
// Engineer: Timothy-LiuXuefeng
// 
// Create Date: 2021/07/08 12:17:29
// Design Name: PipelineCPU
// Module Name: TestBench
// Project Name: PipelineCPU
// Target Devices: xc7a35tcpg236-1
// Tool Versions: 2017.3
// Description: The test bench module.
// 
// Dependencies: None
// 
// Revision: None
// Revision 0.01 - File Created
// Additional Comments: None
// 
//////////////////////////////////////////////////////////////////////////////////


module TestBench();

    reg sysclk;
    reg reset;
    wire [3:0] AN;
    wire [7:0] BCD;
    wire [7:0] leds;

    PipelineCPU PipelineCPU(sysclk, reset, leds, AN, BCD);

    initial begin
        sysclk <= 0;
        reset <= 0;
    end
    
    always #5 sysclk <= ~sysclk;
    
endmodule
