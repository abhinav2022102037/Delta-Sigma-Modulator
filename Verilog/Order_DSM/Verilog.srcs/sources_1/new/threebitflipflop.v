`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.06.2024 22:39:06
// Design Name: 
// Module Name: threebitflipflop
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


module threebitflipflop(input clk,input reset,input [2:0] in,output reg [2:0] out

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
