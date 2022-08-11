`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////


module top_module(
input wire [3:0] sw,
output wire [6:0] a_to_g,
output wire [7:0] an,
output wire dp
    );
    assign an = 8'b11111111; // all digit on
    assign dp = 0; // dp off
    hex7seg D1(.x(sw),.a_to_g(a_to_g));
endmodule

module hex7seg(
    input wire [3:0]x,
    output reg [6:0] a_to_g
    );

always@(*)
begin
    case(x)
        4'b0000: a_to_g = 7'b1111110; // "0"     
        4'b0001: a_to_g = 7'b0110000; // "1" 
        4'b0010: a_to_g = 7'b1101101; // "2" 
        4'b0011: a_to_g = 7'b1111001; // "3" 
        4'b0100: a_to_g = 7'b0110011; // "4" 
        4'b0101: a_to_g = 7'b1011011; // "5" 
        4'b0110: a_to_g = 7'b1011111; // "6" 
        4'b0111: a_to_g = 7'b1110000; // "7" 
        4'b1000: a_to_g = 7'b1111111; // "8"     
        4'b1001: a_to_g = 7'b1111011; // "9" 
        default: a_to_g = 7'b1111110; // "0"
endcase
end
endmodule
