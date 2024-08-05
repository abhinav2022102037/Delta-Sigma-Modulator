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


module Mash_1_1_1 #(parameter N=3) (input clk,input reset,input [N-1:0] in,output [3:0] out,output clk_out

    );
    wire Cout1,Cout2,Cout3;
    wire [N-1:0] out1,out2,out3;
    wire temp1;
    wire [3:0] temp2,temp3,temp4,temp5,temp6,temp7;
    ClockDivider instance_12(.reset(reset),.clk_in(clk),.clk_out(clk_out));
    accumulator instance_1(.clk(clk),.reset(reset),.in(in),.out(out1),.Cout(Cout1));
    accumulator instance_2(.clk(clk),.reset(reset),.in(out1),.out(out2),.Cout(Cout2));
    accumulator instance_3(.clk(clk),.reset(reset),.in(out2),.out(out3),.Cout(Cout3));
    dflipflop instance_4(.clk(clk),.reset(reset),.D(Cout3),.Q(temp1));
    twoscomplement_1_4 instance_5(.in(temp1),.out(temp2));
    adder_1_4_4 instance_6(.in1(Cout3),.in2(temp2),.out(temp3));
    adder_1_4_4 instance_7(.in1(Cout2),.in2(temp3),.out(temp4));
    fourbitflipflop instance_8(.clk(clk),.reset(reset),.in(temp4),.out(temp5));
    twoscomplement_4 instance_9(.in(temp5),.out(temp6));
    adder_4_4_4 instance_10(.in1(temp6),.in2(temp4),.out(temp7));
    adder_4_1_4 instance_11(.in1(Cout1),.in2(temp7),.out(out));
 endmodule
