`timescale 1ns / 1ps

module Half_adder(a,b,s,cout);
input a,b;
output s,cout;
xor(s,a,b);
and(cout,a,b);
endmodule

module full_adder(a,b,ci,s,cout);
input a,b,ci;
output s,cout;
wire w1, w2, w3;

Half_adder HA1(ci,w1,s,w3);
Half_adder HA2(a,b,w1,w2);
or or1(cout,w2,w3);
endmodule
