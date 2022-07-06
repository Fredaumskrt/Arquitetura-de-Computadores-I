/*

04a.) manualmente
a.) 0,321(4) = X(2) = a)0,321(4)
3(4)=11
2(4)=10
1(4)=01
0,321=0,111001(2)

b.) 0,3C7(16) = X(4) = b)0,3C7(16)
3(16)=3(4)
c(16)=30(4)
7(16)=13(4)
0,3C7(16)=0.33013

c.) 0,734(8) = X(2) = c)0,734(8)
7(8)=111
3(8)=11
4(8)=100
0,734(8)=0,11111100(2)

d.) 7,510(8) = X(4) = 7,510(8)
111,10110(2)
11|10|,10|11|00
32,230(4)

e.) A,D91(16) = X(4) = A,D91(16)
A=22
D=31
9=21
1=1
A,D91(16)=22,31211

04b.) mediante uso de um programa em Verilog

*/
module Guia_0204;
// define data
 real x = 0.0; // decimal
 real xa = 0.0; // decimal
 real xc = 0.0; // decimal
 reg [7:0] b = 8'b1010_0000 ; // binary
 reg [7:0] a = 8'b0011_1100 ; // 3c convertido para binario
 reg [7:0] c = 0; 
 integer q [3:0]; // b
 integer w [3:0]; // a
 integer e [3:0]; // c
// actions
 initial
 begin : main
 $display ( "Guia_0204 - Tests" );
 $display ( "x = %f" , x );
 $display ( "xa = %f" , xa );
 $display ( "xc = %f" , xc );

 $display ( "b = 0.%8b", b );
 $display ( "a = 0.%2d %2d %2d %2d (4)", a );
 $display ( "c = 0.%2d %2d %2d %2d (4)", c );
 
 $display ( "b = 0.%x%x (16)", b[7:4],b[3:0] );
 $display ( "a = 0.%2d %2d %2d %2d (4)", a[7:4],a[3:0] );
 $display ( "c = 0.%2d %2d %2d %2d (4)", c[7:4],c[3:0] );

 q[3] = b[7:6];
 q[2] = b[5:4];
 q[1] = b[3:2];
 q[0] = b[1:0];
 
 w[3] = a[7:6];
 w[2] = a[5:4];
 w[1] = a[3:2];
 w[0] = a[1:0];

 e[3] = e[7:0];
 e[2] = e[5:4];
 e[1] = e[3:2];
 e[0] = e[1:0];

 $display ( "b = 0.%2b %2b %2b %2b (2)", b[7:6],b[5:4],b[3:2],b[1:0] );
 $display ( "a = 0.%2b %2b %2b %2b (2)", a[7:6],a[5:4],a[3:2],a[1:0] );
 $display ( "c = 0.%2b %2b %2b %2b (2)", c[7:6],c[5:4],c[3:2],c[1:0] );

 $display ( "q = 0.%2d %2d %2d %2d (4)", q[3] ,q[2] ,q[1] ,q[0] );
 $display ( "w = 0.%2d %2d %2d %2d (4)", w[3] ,w[2] ,w[1] ,w[0] );
 $display ( "e = 0.%2d %2d %2d %2d (4)", e[3] ,e[2] ,e[1] ,e[0] );
 end // main
endmodule // Guia_0204


// consegui fazer a conversao das letras A e B apenas, estou tendo muitos erros bobos que nao sei resolver..