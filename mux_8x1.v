`timescale 1ns / 1ps
module mux_8x1(W,S,Y);
    input [7:0]W;
    input [2:0]S;
    output  Y;
    wire [6:1]f;
    
    mux_2x1 m1(W[1:0],S[2],f[1]);
    mux_2x1 m2(W[3:2],S[2],f[2]);
    mux_2x1 m3(W[5:4],S[2],f[3]);
    mux_2x1 m4(W[7:6],S[2],f[4]);
    
    mux_2x1 m5(f[2:1],S[1],f[5]);
    mux_2x1 m6(f[4:3],S[1],f[6]);
    
    mux_2x1 m7(f[6:5],S[0],Y);
endmodule
