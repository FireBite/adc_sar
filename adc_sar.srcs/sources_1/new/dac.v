`timescale 1ns / 1ps

module dac(
    input [7:0] in,
    output real out
    );
    
    assign out = $bitstoreal(in);
endmodule
