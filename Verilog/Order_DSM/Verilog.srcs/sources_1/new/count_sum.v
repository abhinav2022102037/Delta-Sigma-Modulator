`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2024 22:22:09
// Design Name: 
// Module Name: count_sum
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


module count_sum( input clk,input reset,input b,input [12:0] count_in,input [12:0] Sum_in,output reg [12:0] count, output reg [12:0] Sum

    );
    always @(negedge clk) begin
       if(reset) begin
           Sum<=0; count<=0;
       end
       else begin
         count<=count_in+1;
         if(b==1) begin
             Sum<=Sum_in;
         end
         else begin
            Sum<=Sum_in+1;
         end
         
       end
    end
endmodule
