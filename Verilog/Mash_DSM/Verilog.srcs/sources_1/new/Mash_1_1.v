`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.06.2024 21:07:53
// Design Name: 
// Module Name: Mash_1_1
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


module Mash_1_1 #(parameter N=3) (input clk,input reset,input [N-1:0] in,output [2:0] out,output clk_out

    );
    wire Cout1,Cout2;
    wire [N-1:0] out1,out2;
    wire temp1;
    wire [2:0] temp2;
    wire [2:0] temp3;
//    ClockDivider instance_7(.reset(reset),.clk_in(clk),.clk_out(clk_out));
assign clk_out=clk;
    accumulator instance_1(.clk(clk_out),.reset(reset),.in(in),.out(out1),.Cout(Cout1));
    accumulator instance_2(.clk(clk_out),.reset(reset),.in(out1),.out(out2),.Cout(Cout2));
    dflipflop instance_3(.clk(clk_out),.reset(reset),.D(Cout2),.Q(temp1));
    twoscomplement_1_3 instance_4(.in(temp1),.out(temp2));
    adder_1_3_3 instance_5(.in1(Cout2),.in2(temp2),.out(temp3));
    adder_1_3_3 instance_6(.in1(Cout1),.in2(temp3),.out(out));
 endmodule
