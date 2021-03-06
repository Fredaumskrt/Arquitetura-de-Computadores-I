// Frederico Malaquias A 
// Questao 04
// 747544


`include "mealy_0101.v"
//include "moore_0101.v"

module Exemplo_1102;
reg clk, reset, x;
wire m1, m2;
mealy_0101 mealy1 ( m1, x, clk, reset );
moore_0101 moore1 ( m1, x, clk, reset );
initial
begin
//$display ( "Time    X   Mealy");

// initial values
clk = 1;
reset = 0;
x = 0;

// input signal changing
#5 reset = 1;
#10 x = 0;
#10 x = 0;
#10 x = 1;
#10 x = 0;
#10 x = 0;
#10 x = 1;
#10 x = 0;
#10 x = 1;
#30 $finish;
end // initial

always
#5 clk = ~clk;
always @( posedge clk )
begin
$display ( "%4d %4b %4b", $time, x, m1 );
end // always at positive edge clocking changing
endmodule // Exemplo_1102