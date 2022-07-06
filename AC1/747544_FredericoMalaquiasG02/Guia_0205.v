// 05a.) manualmente
// a.) 101,01(2) + 11,011(2) = X(2)
// b.) 1001,111(2) - 10,11(2) = X(2) (OBS.: Colocar operandos do mesmo tamanho)
// c.) 100,011(2) * 11,01(2) = X(2) (OBS.: Considerar as vírgulas, após operar)
// d.) 10110,01(2) / 10,101(2) = X(2)
// e.) 1101001(2) % 1001(2) = X(2) (OBS.: Considerar resto de divisão inteira (%))
// DICA: Para conferir os resultados, converter para a base 10.
// 05b.) mediante uso de um programa em Verilog
// // /*
//  Guia_0205
// */
module Guia_0205;
// define data
 reg [7:0] a = 8'b0001_0101 ; // binary
 reg [7:0] b = 8'b0001_1011 ; // binary
 reg [7:0] c; // alocando espaco para a soma
// actions
reg [7:0] a2 = 8'b0100_1111;
reg [7:0] b2 = 8'b0000_1011;
reg [7:0] c2 ;

reg [7:0] a3 = 8'b0010_0011;
reg [7:0] b3 = 8'b0000_1101;
reg [7:0] c3 ;

reg [7:0] a4 = 8'b0101_1001;
reg [7:0] b4 = 8'b0001_0101;
reg [7:0] c4 ;

reg [7:0] a5 = 8'b0110_1001;
reg [7:0] b5 = 8'b0000_1101;
reg [7:0] c5 ;
 initial
 begin : main
 $display ( "Guia_0205 - Tests" );
 $display ( "a = %8b", a );
 $display ( "b = %8b", b );
 
 $display ( "a2 = %8b", a2 );
 $display ( "b2 = %8b", b2 );
 
 $display ( "a3 = %8b", a3 );
 $display ( "b3 = %8b", b3 );
 
 $display ( "a4 = %8b", a4 );
 $display ( "b4 = %8b", b4 );
 
 $display ( "a5 = %8b", a5 );
 $display ( "b5 = %8b", b5 );
 
 
 c = a+b;
 $display ( "c = a+b = %8b", c );
 c2 = a2-b2;
 $display ( "c2 = a2-b2 = %8b", c2 );

 c3 = a3*b3;
 $display ("c3 = a3*b3 = %8b", c3);
 
 c4 = a4/b4;
 $display ("c4 = a4*b4 = %8b", c4);
 
 c5 = a5*b5;
 $display ("c5 = a5*b5 = %8b", c5);


 end // main
endmodule // Guia_0205

//  c = a-b;
//  $display ( "c = a-b = %8b", c );
//  c = b-a;
//  $display ( "c = b-a = %8b", c );
//  c = a*b;
//  $display ( "c = a*b = %8b", c );
//  c = b/a;
//  $display ( "c = b/a = %8b", c );