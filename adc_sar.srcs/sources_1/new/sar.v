`timescale 1ns / 1ps

module sar(
        input clk,
        input compare,
        output reg [7:0] out
    );
    
    reg [3:0] bit = 0;
    
    always @(posedge clk) begin
        out[bit] = 1;
        
        bit <= bit + 1;
        if (bit > 7)
            bit <= 0;
    end
    
    always @(posedge clk) begin
        out[bit - 1] = !compare;
    end
    
endmodule