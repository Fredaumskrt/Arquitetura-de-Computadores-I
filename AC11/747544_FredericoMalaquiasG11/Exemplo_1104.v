// Frederico Malaquias A 
// Questao 06
// 747544

`include "moore_0101.v"

module Exemplo0101;
reg clk, reset, x;
wire m1, m2;

moore_0101 moore1 ( m2, x, clk, reset );

initial
begin
$display ( "Time    X    Moore" );
// initial values
clk = 1;
reset = 0;
x = 0;
// input signal changing
#5 reset = 1;
#10 x = 0;
#10 x = 1;
#10 x = 0;
#10 x = 1;
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
$display ( "%4d   %4b  %5b", $time, x, m2 );
end // always at positive edge clocking changing
endmodule // Exemplo_0101
