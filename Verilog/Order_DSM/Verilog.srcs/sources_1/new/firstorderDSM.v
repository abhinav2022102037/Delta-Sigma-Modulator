`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2024 20:32:03
// Design Name: 
// Module Name: firstorderDSM
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


module firstorderDSM(input clk,input reset, input [12:0]  K,input [12:0] M, output b,output [12:0] out2,output [12:0] count,output [12:0] Sum

    );
    wire [12:0] out1;
    wire [12:0] count_in,Sum_in;
    km_select instance_1(.b(b),.K(K),.M(M),.out(out1));
    accumulator instance_2(.clk(clk),.reset(reset),.in(out1),.out(out2),.Cout(b));
    count_sum instance_3(.clk(clk),.reset(reset),.b(b),.count_in(count_in),.Sum_in(Sum_in),.count(count),.Sum(Sum));
    nbitflipflop instance_4(.clk(clk),.reset(reset),.in(count),.out(count_in));
    nbitflipflop instance_5(.clk(clk),.reset(reset),.in(Sum),.out(Sum_in));
   

endmodule
