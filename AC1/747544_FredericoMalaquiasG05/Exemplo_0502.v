// 01.) Projetar e descrever em Verilog, usando apenas portas nativas nand
// um módulo equivalente à expressão (~a & b).
// O nome do arquivo deverá ser Exemplo_0502.v,
// e poderá seguir o modelo descrito anteriormente.
// Incluir previsão de testes.
// Simular o módulo no Logisim e 
// apresentar layout do circuito e subcircuitos.

 //TRUTH TABLE
 //Nome: Frederico Malaquias Caldeira
 //Matricula: 747544
 // ---------------------


module f5a ( output s,
 input a,
 input b );
// definir dado local
 wire not_a;
// descrever por portas
 not NOT1 ( not_a, a );
 and AND1 ( s, not_a, b );
endmodule 

module f5b ( output s,
 input a,
 input b );
// descrever por expressao
 assign s = ~a & b;
endmodule // f5b
module test_f5;
// ------------------------- definir dados
 reg x;
 reg y;
 wire a, b;
 f5a moduloA ( a, x, y );
 f5b moduloB ( b, x, y );
// ------------------------- parte principal
 initial
 begin : main
 $display("Exemplo_0505 - Frederico_Malaquias - 05/03/22");
 $display("Test module");
 $display(" x y a b");
 // projetar testes do modulo
 $monitor("%4b %4b %4b %4b", x, y, a, b);
 x = 1'b0; y = 1'b0;
 #1 x = 1'b0; y = 1'b1;
 #1 x = 1'b1; y = 1'b0;
 #1 x = 1'b1; y = 1'b1;
 end
endmodule 

/* previsao de testes 
Test module
 x y a b
   0    0    0    1    
   0    0    0    1
   1    1    1    1
   0    0    0    0
*/ 