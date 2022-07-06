/*
02.) Fazer as conversões entre as bases indicadas:
02a.) manualmente
a.) 0,62500(10) = X(2) = 0,101(2)
b.) 1,12500 (10) = X(2) = 1,001(2)
c.) 1,03125 (10) = X(2) = 1,00001(2)
d.) 3,87500 (10) = X(2) = 11,111(2)
e.) 11,37500 (10) = X(2) = 1011,011(2)
*/
module Guia_0202;
// define data
 real x = 0.625; // decimal
 integer y = 7 ; // counter
 reg [7:0] b = 8'011101 ; // binary
// actions
 initial
 begin : main
 $display ( "Guia_0202 - Tests" );
 $display ( "x = %f" , x );
 $display ( "b = 0.%8b", b );
 while ( x > 0 && y >= 0 )
 begin
 if ( x*2 >= 1 )
 begin
 b[y] = 1;
 x = x*2.0 - 1.0;
 end
 else
 begin
 b[y] = 0;
 x = x*2.0;
 end // end if
 $display ( "b = 0.%8b", b );
 y=y-1;
 end // end while
 end // main
endmodule // Guia_0202
// Testei as funcoes abaixo para tentar pegar o inteiro antes da virgula, infelizmente sem resultados esperados
/*
while (yb > 1)
 begin
     yb2[ct] = yb  % 2 ;
     ct --;
     yb = yb / 2.0;
    $display ( "yb2 = %8b ", yb2 );
    $display ( "yb = %d ", yb );
end
*/

 /* if (yb > 2^ct) {

yb2[ct] = 1;

yb -= 2^ct;

} else {

yb2[ct] = 0;

}

ct--; */