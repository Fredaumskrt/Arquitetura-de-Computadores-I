//  Nome - Frederico Malaquias
// -- test clock generator (1)
// Matrícula - 747544

module clock ( output clk );
reg clk;
initial
 begin
 clk = 1'b0;
 end
always
 begin
 #12 clk = ~clk;
 end
endmodule // clock ( )
module Exemplo0901;
wire clk;
clock CLK1 ( clk );
initial begin
 $dumpfile ( "Exemplo0901.vcd" );
 $dumpvars;
 #120 $finish;
end
endmodule // Exemplo_0901 ( )
