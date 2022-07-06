/*
 Guia_0101.v
*/
module Guia_0101;
// define data
integer x = 26;  // decimal A
integer y = 55;  // decimal B
integer c = 713; // decimal c
integer d = 312; // decimal d
integer e = 366; // decimal e
 
 reg [7:0] b = 0; // binary A
 reg [7:0] a = 0; // binary B
 reg [7:0] z = 0; // binary C
 reg [7:0] t = 0; // binary D
 reg [7:0] u = 0; // binary E
 // actions
 
 initial
 begin : main
 $display ( "Guia_0101 - Tests" );
 
 // A
 $display ( "x = %d" , x ); // AQUI MOSTRA UM INTEGER
 $display ( "b = %8b", b ); // AQUI MOSTRA UM REG
 b = x;
 
 // B
 $display ( "y = %d" , y );
 $display ( "a = %8b", a );
 a = y;

 // c
 $display ( "c = %d" , c ); // AQUI MOSTRA UM INTEGER
 $display ( "z = %8b", z ); // AQUI MOSTRA UM REG
 z = c;
  // aparentemente tem uma variavel que serve pra locar um espaco na memoria para os binarios serem mostrados,
  // ate agora nao identifiquei essa variavels
 
 // D
 $display ( "d = %d" , d ); // AQUI MOSTRA UM INTEGER
 $display ( "t = %8b", t ); // AQUI MOSTRA UM REG
 t = d;

// E
 $display ( "e = %d" , e ); // AQUI MOSTRA UM INTEGER
 $display ( "u = %8b", u ); // AQUI MOSTRA UM REG
 u = e;


 // mostra a variavel reg
 $display ( "b = %8b", b );
 $display ( "a = %8b", a );
 $display ( "z = %8b", z );
 $display ( "t = %8b", t );
 $display ( "u = %8b", u );


 end // main
endmodule
