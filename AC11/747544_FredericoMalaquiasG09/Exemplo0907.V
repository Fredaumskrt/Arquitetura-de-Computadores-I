// Nome - Frederico Malaquias
// -- test clock generator (7)
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

  module pulse2 ( signal, clock ); // dando pulse para o pulse 1
input clock;
output signal;
reg signal;
always @ ( posedge clock )
 begin
 signal = 1'b1;
 #5 signal = 1'b0;
 #5 signal = 1'b0;
 #5 signal = 1'b0;
 #5 signal = 1'b0;
 #5 signal = 1'b0;
 end
endmodule // pulse

module Exemplo_0907;
wire clock;
clock clk ( clock );
wire p1, p2;
pulse1 pls1 ( p1, clock );
pulse2 pls2 ( p2, clock );


initial begin
 $dumpfile ( " Exemplo0907.vcd" );
 $dumpvars ( 1, clock, p1, p2);
 #120 $finish; 
end
endmodule 