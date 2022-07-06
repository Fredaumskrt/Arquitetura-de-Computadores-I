/*
 Guia_0303
*/
module Guia_0303;
// define data
 reg signed [7:0] a = 8'b0001_0101; // A
 reg signed [6:0] b = 8'b0011_0111 ; // B
 reg signed [5:0] c = 8'b0011_0010 ; // C
 reg signed [6:0] g = 0 ; // D
 reg signed [6:0] h = 0 ; // E
 
 reg signed [7:0] d = 0 ;  
 reg signed [6:0] e = 0 ; 

 reg signed[7:0] g2 = 0;
 reg signed[7:0] h2 = 0;


 
// actions
 initial
 begin : main
 $display ( "Guia_0303 - Tests" );
 d = ~a+1;
 e = ~(a-1);
 $display ( "a = %8b -> C1(a) = %8b -> C2(a) = %8b = %d = %d", a, ~a, d, d, e );
 d = ~b+1;
 e = ~(b-1);
 $display ( "b = %7b -> C1(b) = %7b -> C2(b) = %7b = %d = %d", b, ~b, d, d, e );
 d = ~c+1;
 e = ~(c-1);
 $display ( "c = %6b -> C1(c) = %6b -> C2(c) = %6b = %d = %d", c, ~c, d, d, e );
 g2 = ~g+1;
 h2 = ~(g-1);
 $display ( "g = %6b -> C1(g) = %6b -> C2(g) = %6b = %d = %d", g, ~g, g2, g2, h2 );
 g2 = ~h+1;
 h2 = ~(h-1);
 $display ( "h = %6b -> C1(h) = %6b -> C2(h) = %6b = %d = %d", h, ~h, h2, h2, h2 );

 end // main end // main
endmodule // Guia_0303

// a subtracao da a,b e c funcionou perfeitamente, porem os dois ultimos deram erros, logo pensei que seria o numero de bits
// porem ainda nao consegui achar o erro