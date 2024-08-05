`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.06.2024 21:34:48
// Design Name: 
// Module Name: Mash_1_1_tb
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


module Mash_1_1_tb #(parameter N=3)(

    );
    reg clk,reset;
    reg [N-1:0] in;
    wire [2:0] out;
    wire clk_out;
    Mash_1_1 instance_mash(.clk(clk),.reset(reset),.in(in),.out(out),.clk_out(clk_out));
    always begin
       #5 clk=~clk;
    end
    initial begin
        clk=0; reset=1; in=7;
        #10 reset=0;
        #300 $finish;
    end
endmodule
