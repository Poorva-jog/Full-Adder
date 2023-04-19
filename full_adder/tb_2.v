`timescale 1ns / 1ps

module tb_2;

reg a;
reg b;
reg ci;

wire s;
wire cout;

full_adder dut (.a(a),.b(b),.ci(ci),.s(s),.cout(cout));

initial begin

a = 0; b = 0; ci=0;
#20;

a = 0; b = 0; ci=1;
#20;

a = 0; b = 1; ci=0;
#20;

a = 0; b = 1; ci=1;
#20;

a = 1; b = 0; ci=0;
#20;

a = 1; b = 0; ci=1;
#20;

a = 1; b = 1; ci=0;
#20;

a = 1; b = 1; ci=1;
#20;

end

    initial begin
     #180
    $finish;
    end
endmodule
