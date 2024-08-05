`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2024 20:14:27
// Design Name: 
// Module Name: km_select
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
module km_select(input b, input [12:0] K,input [12:0] M,output reg [12:0] out

    );
    always @(*) begin
    if(b==1'b1) begin
        out<=K+M;
        
    end
    else begin
        out<=K-M;
    end
    end
endmodule
