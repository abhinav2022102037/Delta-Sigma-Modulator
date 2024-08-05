`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.06.2024 20:17:42
// Design Name: 
// Module Name: nbitadder
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


module nbitadder #(parameter N=3)( input [N-1:0] in1,input [N-1:0] in2,output [N-1:0] out,output Cout

    );
    assign {Cout,out}=in1+in2;
  
endmodule
