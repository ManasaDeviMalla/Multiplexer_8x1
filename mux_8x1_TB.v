`timescale 1ns / 1ps
module mux_8x1_TB(  );
    reg [7:0]W;
    reg [2:0]S;
    wire  Y;
mux_8x1 dut(W,S,Y);

initial begin
S=1;W=8'b0100_1100;
#20; S=5;W=8'b0001_0011;
#20; S=2;W=8'b1010_0101;
#20; $stop;
end

endmodule
