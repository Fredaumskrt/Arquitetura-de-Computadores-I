// Nome - Frederico Malaquias
// -- test clock generator (4)
// Matrícula - 747544

module clock ( output clk ); // criando glock que começa com frequencia 12
reg clk;
initial
 begin
 clk = 1'b0;
 end
always
 begin
 #12 clk = ~clk;
 end
endmodule


module pulse1 ( signal, clock );
input clock;
output signal;
reg signal;
always @ ( posedge clock )
 begin
 signal = 1'b1;
 #4 signal = 1'b0;
 #4 signal = 1'b1;
 #4 signal = 1'b0;
 #4 signal = 1'b1;
 #4 signal = 1'b0;
 end
endmodule // pulse


module Exemplo_0904;
wire clock;
clock clk ( clock );
wire p1;
pulse1 pls1 ( p1, clock );


initial begin
 $dumpfile ( " Exemplo0904.vcd" );
 $dumpvars ( 1, clock, p1);
 #120 $finish; // parada
end
endmodule 