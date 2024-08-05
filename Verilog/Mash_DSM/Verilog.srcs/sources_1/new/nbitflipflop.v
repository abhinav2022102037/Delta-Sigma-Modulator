`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.06.2024 20:41:23
// Design Name: 
// Module Name: nbitflipflop
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


module nbitflipflop #(parameter N=3)(input clk,input reset,input [N-1:0] in,output reg [N-1:0] out

    );
    always @(posedge clk) begin
     if (reset) begin
        out<=0;
     end
     else begin
       out<=in;
     end
   end
    
endmodule
