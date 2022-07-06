/*

03a.) manualmente
a.) 0,011101(2) = X(4) =  ,011101
  01|11|01= 1|3|1
  0,131(4)

b.) 0,100101(2) = X(8) = 0,100101
  100|101
   4   5
  0,45(8)

c.) 0,100110(2) = X(16) = 0,100110
  1001|10(00)
    2    8
  0,28(16)

d.) 1,110011(2) = X(8) = 1,110011
  1,63(8)
e.) 1101,1101(2) = X(16) = 1101,1101
  1101|1101
    d   d
  d,d(16)
03b.) mediante uso de um programa em Verilog

 */
module Guia_0203;
// define data
 real xa = 0.0; 
 real xb = 0.0; 
 real xc = 0.0; // decimal
 real xd = 0.0; 
 real xe = 0.0; 
 reg [7:0] a = 8'b011101 ; // binary
 reg [7:0] b = 8'b100101 ; // binary
 reg [7:0] c = 8'b100110 ; // binary
 reg [7:0] d = 8'b0111_0011; // binary
 reg [7:0] e = 8'b1101_1101 // binary
// actions
 initial
 begin : main
 $display ( "Guia_0203 - Tests" );
 $display ( "xa = %f" , xa );
 $display ( "xb = %f" , xb );
 $display ( "xc = %f" , xc );
 $display ( "xd = %f" , xd );
 $display ( "xe = %f" , xe );
 
 
 $display ( "a = 0.%8b", a );
 $display ( "b = 0.%8b", b );
 $display ( "c = 0.%8b", c );
 $display ( "d = 0.%8b", d );
 $display ( "e = 0.%8b", e );


 $display ( "a = 0.%2d %2d %2d %2d (4)", a[4:0],a[3:0], a[2:0], a[1:0] ); // quarternario
 $display ( "b = 0.%o%o (8) ", b[7:5],b[4:2] ); // octal
 $display ( "c = 0.%x%x (16) ", c[7:4],c[3:0] ); // hexadecimal
 $display ( "d = 0.%o%o (8) ", d[7:5],d[4:2] );  // octal
 $display ( "e = 0.%x%x (16) ", e[7:4],e[3:0] );  // hexadecimal
 end // main
endmodule // Guia_0203
