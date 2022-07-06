/*
 Guia_0103.v
*/
module Guia_0103;
// define data
 integer x = 73; // decimal
 integer y = 47; // decimal
 integer u = 61; // decimal
 integer t = 157; // decimal
 integer p = 751; // decimal

 reg [7:0] b = 0; // binary
 reg [7:0] a = 0; // Octal
 reg [7:0] c = 0; // hexadecimal
 reg [7:0] d = 0; // hexadecimal
 reg [7:0] e = 0; // hexadecimal
// actions
 initial
 begin : main
 $display ( "Guia_0103 - Tests" );
 
 // printar o integer
 $display ( "x = %d" , x );
 $display ( "y = %d" , y );
 $display ( "u = %d" , u );
 $display ( "t = %d" , t );
 $display ( "p = %d" , p );
 
 // mostar o reg
 $display ( "b = %8b", b );
 $display ( "a = %8o", a );
 $display ( "c = %8x", c );
 $display ( "d = %8x", d );
 $display ( "e = %8x", e );

 x = b;
 y = a;
 u = c;
 t = d;
 p = e;
 
 /* Nao consegui obter sucesso neste, creio que seja um erro bobo, tentarei passar ao proximo e tirar
 a duvida na proxima aula */

 $display ( "x = %B (2) = %o (8) = %x (16) = %X (16)", x, x, x, x  );
 $display ( "b = %B (2) = %o (8) = %x (16) = %X (16)", b, b, b, b  );
//  $display ( "a = %o", y );
//  $display ( "c = %x", u );
//  $display ( "d = %x", t );
//  $display ( "e = %x", p );
 // tentar arrumar um jeito de fazer a alteração
//  $display ( "b = %B (2) = %o (8) = %x (16) = %X (16)", b, b, b, b );
//  $display ( "a = %B (10) = %o (8) = %x (16) = %X (16)", a, a, a, a );
//  $display ( "a = %B (2) = %o (8) = %x (16) = %X (16)", b, b, b, b );
//  $display ( "b = %B (2) = %o (8) = %x (16) = %X (16)", b, b, b, b );
//  $display ( "b = %B (2) = %o (8) = %x (16) = %X (16)", b, b, b, b );
 end // main
endmodule // Guia_0103
