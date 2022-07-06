/*
 Guia_0104.v
*/
module Guia_0104;
// define data
 integer x = 0; // quaternario
 integer y = 0; // OCTAL
 integer u = 0; // HEXADECIMAL
 integer i = 0;  // OCTAL
 integer o = 0;  // QUATERNARIO
 
 reg [7:0] a = 8'b10011; // binary 
 reg [7:0] b = 8'b11101; 
 reg [7:0] c = 8'b101001; 
 reg [7:0] d = 8'b110101; 
 reg [7:0] e = 8'b111001; 

// actions
 initial
 begin : main
 $display ( "Guia_0104 - Tests" );
 // printar o integer
 $display ( "x = %d" , x );
 $display ( "y = %d" , y );
 $display ( "u = %d" , u );
 $display ( "i = %d" , i );
 $display ( "o = %d" , o );

 // printar o Reg
 $display ( "b = %b", b );
 $display ( "a = %o", a );
 $display ( "c = %x", c );
 $display ( "d = %o", d );
 $display ( "e = %B", e );
 
 b = x;
 a = y;
 c = u;
 d = i;
 e = o;

 // fazer conversao?
 $display ( "b = [%4b] [%4b] = %x %x", b[7:4], b[3:0], b[7:4], b[3:0] );
 $display ( "a = [%4b] [%4b] = %x %x", a[7:4], a[3:0], a[7:4], a[3:0] );
 $display ( "c = [%4b] [%4b] = %x %x", c[7:4], c[3:0], c[7:4], b[3:0] );
 $display ( "d = [%4b] [%4b] = %x %x", d[7:4], d[3:0], d[7:4], d[3:0] );
 $display ( "e = [%4b] [%4b] = %x %x", e[7:4], e[3:0], e[7:4], e[3:0] );
 end // main
endmodule // Guia_0104

// Consegui faazer as alteracoes de binario pra hexa e para octal
// porem para quaternario estou tendo um pouco de dificuldade
// pesquisei no google, porem nao encontrei nada relacionado