/*
Atividades
01.) Fazer as conversões entre as bases indicadas:
01a.) manualmente
a.) 0,10101(2) = X(10) = 0,65625(10)
b.) 0,01101(2) = X(10) = 0,40625(10)
c.) 0,11101(2) = X(10) = 0,90625(10)
d.) 1,10111(2) = X(10) = 1,71875(10)
e.) 11,11110(2) = X(10 = 3,875(10)
*/
module Guia_0201;
// define data
 real xb = 0 ; // decimal
 real xa = 0 ; // decimal
 real xc = 0 ; // decimal
 real xd = 0 ; 
 real xe = 0 ; 
 real power2 = 1.0; // power of 2
 integer y = 4 ; // counter
 reg [7:0] b = 8'b10101; // binary (only fraction part, Big Endian)
 reg [7:0] a = 8'b01101; 
 reg [7:0] c = 8'b11101; 
 reg [7:0] d = 8'b0011_0111; 
 reg [7:0] e = 8'b0111_1110; 
// actions
 initial
 begin : main
 $display ( "Guia_0201 - Tests" );
 $display ( "xb = %f" , xb );
 $display ( "xa = %f" , xa );
 $display ( "xc = %f" , xc );
 $display ( "xd = %f" , xd );
 $display ( "xe = %f" , xe );
 
 $display ( "b = 0.%8b", b );
 $display ( "a = 0.%8b", a );
 $display ( "c = 0.%8b", c );
 $display ( "d = 0.%8b", d );
 $display ( "e = 0.%8b", e );
 while ( y >= 0 )
 begin
 power2 = power2 / 2.0;
 
 if ( b[y] == 1 )
 begin
 xb = xb + power2;
 end

if ( a[y] == 1 )
 begin
 xa = xa + power2;
 end

 if ( c[y] == 1 )
 begin
 xc = xc + power2;
 end

 if ( d[y] == 1 )
 begin
 xd = xd + power2;
 end

 if ( e[y] == 1 )
 begin
 xe = xe + power2;
  end

 $display ( "xb = %f", xb );
 $display ( "xa = %f", xa );
 $display ( "xc = %f", xc );
 $display ( "xd = %f", xd );
 $display ( "xe = %f", xe );


 y=y-1;
 end // end while
 end // main
endmodule // Guia_0201
