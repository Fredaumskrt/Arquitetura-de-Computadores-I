// /*
// Manualmente: a.) C1,6 (1011(2)) = X(2)
// b.) C1,8 (1010(2)) = X(2)
// c.) C2,6 (110011(2)) = X(2)
// d.) C2,7 (10111(2)) = X(2)
// e.) C2,8 (110101(2)) = X(2)
// */
// /*
//  Guia_0301
// */
// module Guia_0301;
// // define data
//  reg [7:0] a = 8'b0000_1011 ; // binary A
//  reg [6:0] b = 8'b0000_1010 ; // binary B
//  reg [5:0] c = 8'b0011_0011 ; // binary C
//  reg [7:0] d2 = 8'b0001_0111; // D
//  reg [7:0] e2 = 8'b0001_0111; // E
 
//  reg [7:0] d = 0 ;  // A 
//  reg [6:0] e = 0 ;  // B 
//  reg [5:0] f = 0 ;  // C

//  reg [6:0] g = 0; // E
//  reg [6:0] h = 0; // F
 

// // actions
//  initial
//  begin : main
//  $display ( "Guia_0301 - Tests" );
//  d = ~a+1;
//  $display ( "a = %8b -> C1(a) = %8b -> C2(a) = %8b", a, ~a, d );
//  e = ~b+1;
//  $display ( "b = %7b -> C1(b) = %7b -> C2(b) = %7b", b, ~b, e );
//  f = ~c+1;
//  $display ( "c = %6b -> C1(c) = %6b -> C2(c) = %6b", c, ~c, f );
//  g = ~d2+1;
//  $display ( "d2 = %6b -> C1(d2) = %6b -> C2(d2) = %6b", d2, ~d2, g );
//  h = ~d2+1;
//  $display ( "e2 = %6b -> C1(e2) = %6b -> C2(e2) = %6b", e2, ~e2, h );
//  end // main
// endmodule // Guia_0301
