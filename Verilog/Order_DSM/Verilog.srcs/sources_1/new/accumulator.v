`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.06.2024 20:30:57
// Design Name: 
// Module Name: accumulator
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


module accumulator #(parameter N=13)( input clk,input reset,input [N-1:0] in,output [N-1:0] out,output Cout

    );
    wire [N-1:0] Sum;
    wire Cout_temp;
    nbitflipflop instance_1(.clk(clk),.reset(reset),.in(Sum),.out(out));
    nbitadder instance_2(.in1(in),.in2(out),.out(Sum),.Cout(Cout_temp));
//    dflipflop instance_3(.clk(clk),.reset(reset),.D(Cout_temp),.Q(Cout));
    dflipflop instance_3(.clk(clk),.reset(reset),.D(Sum[N-1]),.Q(Cout));
    
endmodule

