/*
 Guia_0102.v
*/
module Guia_0102;
// define data
 integer x = 0; // decimal
 integer y = 0; 
 integer t = 0;
 integer u = 0;
 integer p = 0;

 reg [4:0] a = 8'b10101; // binary (bits) fiz um teste com 4 apenas, pode ignorar ele ai
 reg [7:0] b = 8'b11001; // binary (bits)
 reg [7:0] c = 8'b101001; // binary (bits)
 reg [7:0] d = 8'b101101; // binary (bits)
 reg [7:0] e = 8'b100011; // binary (bits)
// actions
 initial
 begin : main
 $display ( "Guia_0102 - Tests" );

 // printar o integer
 $display ( "x = %d" , x );
 $display ( "y = %d" , y );
 $display ( "t = %d" , t );
 $display ( "u = %d" , u );
 $display ( "p = %d" , p );

// mostrar o Reg
 $display ( "a = %8b", a );
 $display ( "b = %8b", b );
 $display ( "c = %8b", c );
 $display ( "d = %8b", d );
 $display ( "e = %8b", e );
 x = a;
 y = b;
 t = c;
 u = d;
 p = e;

 $display ( "a = %d", x );
 $display ( "b = %d", y );
 $display ( "c = %d", t );
 $display ( "d = %d", u );
 $display ( "p = %d", e );



 end // main
endmodule // Guia_0102
