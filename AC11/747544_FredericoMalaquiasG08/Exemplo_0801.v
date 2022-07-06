// -------------------------
// Exemplo_0801 - FULL ADDER
// Nome: Frederico Malaquias
// Matricula: 747544
// -------------------------
// -------------------------
// half adder
// -------------------------
module halfAdder (output s1,
 output s0, 
 input a, 
 input b);
// descrever por portas
xor XOR1 ( s0, a, b );
and AND1 ( s1, a, b );
endmodule // halfAdder
// -------------------------
// full adder
// -------------------------
module fullAdder ( output s1,
 output s0,
 input a, 
 input b, 
 input carryIn );
// descrever por portas e/ou modulos

wire somaHA, carryHA;
wire somaHA_AND_carryHA;

halfAdder HA0(carryHA, somaHA, a, b);
xor XOR1(s0, somaHA, carryIn);
and AND1(somaHA_AND_carryHA, somaHA, carryIn);
or OR1(s1, somaHA_AND_carryHA, carryHA);
endmodule // fullAdder
module test_fullAdder;
// ------------------------- definir dados
    reg [3:0] x;
    reg [3:0] y;
    wire [3:0] carry; // " variavel " que vai um
    wire [4:0] soma;
    
    fullAdder FA0(carry[0], soma[0], x[0], y[0], 1'b0);
    fullAdder FA1(carry[1], soma[1], x[1], y[1], carry[0]);
    fullAdder FA2(carry[2], soma[2], x[2], y[2], carry[1]);
    fullAdder FA3(carry[3], soma[3], x[3], y[3], carry[2]);
    fullAdder FA4(carry[3], soma[4], 1'b0, 1'b0, carry[3]);
 
// ------------------------- parte principal
initial begin
 $display("Exemplo_0801 - Frederico Malaquias - 747544");
 $display("Test ALU’s full adder");
 $monitor("%4b \n %4b\n+%4b\n-----\n%5b\n", carry, x, y, soma);
        x = 4'b0000; y = 4'b0000;
        #1 x = 4'b0001; y = 4'b0000;
        #1 x = 4'b0001; y = 4'b0001;
        #1 x = 4'b0001; y = 4'b0100;
        #1 x = 4'b0101; y = 4'b0100;
        #1 x = 4'b1100; y = 4'b0011;
        #1 x = 4'b1100; y = 4'b0100;

//  $display(1'b0 + 1'b0 + 1'b0+ 0);
//  $display(1'b0 + 1'b0 + 4'b0+ 1);
//  #1 $monitor("%4b %4b %4b %4b", soma, carry, x, y);
//  x = 1'b0; y = 1'b1; s = 1'b0;
 // projetar testes do modulo
//  #1 $monitor("%4b %4b %4b %4b", a, b, sa, sb);
//  #1 s = 1'b1;
// projetar testes do somador completo
end
endmodule // test_fullAdder

