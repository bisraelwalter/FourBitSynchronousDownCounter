`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2017 04:59:15 PM
// Design Name: 
// Module Name: tb_myCounterSim
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


module tb_myCounterSim(
    );
    
    reg firstin;
    reg clock;
    reg reset;
    
    wire[3:0] OUT;
    
    myReverseCounter MRC(OUT, firstin, clock, reset);
    
    initial
        begin
        firstin = 1'b1;
        reset = 1'b0;
        clock = 1'b0;
        end
 
       always 
         #10 clock = ~clock;
        
    initial
         #400 $finish;
 
endmodule                         
    
 
