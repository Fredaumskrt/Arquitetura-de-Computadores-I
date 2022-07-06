/*
 Guia_0105.v
*/
module Guia_0105;
// define data
 integer x = 13; // decimal
 reg [7:0] b ; // binary
 reg [0:7][9:0] s = "PUC-Minas"; // 3 characters (8 bits)
// actions
 initial
 begin : main
 $display ( "Guia_0105 - Tests" );
 $display ( "x = %d" , x );
 $display ( "b = %8b", b );
 $display ( "s = %s" , s );
 b = x;
 $display ( "b = [%4b] [%4b] = %h %h", b[7:4], b[3:0], b[7:4], b[3:0] );
 s[0] = "-";
 s[1] = 8'b01001101; // 'M'
 s[2] = 71; // 'G'
 $display ( "s = %s" , s );
 end // main
endmodule // Guia_0105

// tentei fazer algumas alteracoes mas nao obtiive resultados.
