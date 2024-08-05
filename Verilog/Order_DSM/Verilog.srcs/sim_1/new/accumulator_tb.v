`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.06.2024 20:45:14
// Design Name: 
// Module Name: accumulator_tb
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


module accumulator_tb #(parameter N=3)(

    );
    reg clk,reset;
    reg [N-1:0] in;
    wire [N-1:0] out;
    wire Cout;
    accumulator instance_tb(.clk(clk),.reset(reset),.in(in),.out(out),.Cout(Cout));
    
    always begin
       #5 clk=~clk;
    end
    initial begin 
          clk=0; reset=1;
          #15 reset=0; in=3'b010;
          #100 reset=1; 
          #20 reset=0;
          #10 in=3'b001;
          #330 $finish;
     end 
endmodule
