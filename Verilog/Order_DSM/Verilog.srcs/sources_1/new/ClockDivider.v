`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2024 13:15:49
// Design Name: 
// Module Name: ClockDivider
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


module ClockDivider(input reset,input clk_in,output reg clk_out

    );
    reg [63:0] count;
    always @(posedge clk_in) begin
       if(reset) begin
          count<=0;
          clk_out<=1;  
       end
       else if(count==10) begin
          count<=0;
          clk_out<=1;
       end
       else if(count==5)begin
            count<=count+1;
            clk_out<=0;
       end
       else begin
       count<=count+1;
       end
    end
    
endmodule
