/*
 Guia_0304
*/
module Guia_0304;
// define data
// EXERCICIO LETRA A
 reg signed [7:0] a = 8'b0001_1100; // binary
 reg signed [6:0] b = 8'b0000_1101 ; // binary
 reg signed [5:0] c = 8'b0001_10 ; // binary
 reg signed [7:0] d = 0 ; // binary
 reg signed [6:0] e = 0 ; // binary
 reg signed [5:0] f = 0 ; // binary
// actions

//EXERCICIO LETRA B 
 reg signed [7:0] a2 = 8'b0101_1001; 
 reg signed [6:0] b2 = 8'b0000_1001 ; 
 reg signed [5:0] c2 = 8'b0001_10 ; 
 reg signed [7:0] d2 = 0 ; 
 reg signed [6:0] e2 = 0 ; 
 reg signed [5:0] f2 = 0 ; 

 

 initial
 begin : main
 $display ( "Guia_0304 - Tests" );
 $display ( "a = %8b = %d", a, a );
 $display ( "b = %8b = %d", b, b );
 $display ( "c = %8b = %d", c, c );
 d = a-b;
 $display ( "d = a-b = %8b-%8b = %8b = %d", a, b, d, d );
 d = b-a;
 $display ( "d = b-a = %8b-%8b = %8b = %d", b, a, d, d );
 d = a-c;
 $display ( "d = a-c = %8b-%8b = %8b = %d", a, c, d, d );
 d = c-a;
 $display ( "d = c-a = %8b-%8b = %8b = %d", c, a, d, d );

 
 $display ( "a2 = %8b = %d", a2, a2 );
 $display ( "b2 = %8b2 = %d", b2, b2 );
 $display ( "c2 = %8b = %d", c2, c2 );
 d2 = a2-b2;
 $display ( "d2 = a2-b2 = %8b-%8b = %8b = %d", a2, b2, d2, d2 );
 d2= b2-a2;
 $display ( "d2 = b2-a2 = %8b-%8b = %8b = %d", b2, a2, d2, d2 );
 d2 = a2-c2;
 $display ( "d2 = a2-c2 = %8b-%8b = %8b = %d", a2, c2, d2, d2 );
 d2 = c2-a2;
 $display ( "d2 = c2-a2 = %8b-%8b = %8b = %d", c2, a2, d2, d2 );

 end // main
endmodule // Guia_0304
