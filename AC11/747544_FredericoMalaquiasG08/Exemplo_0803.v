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

 module test;

    reg [4:0] x ;
    reg [4:0] y;
    wire resultado;

    test EC0
    (resultado,
     x, y);

    // ------------------------- parte principal
    initial begin
        $display("Exemplo_0803 - Frederico Malaquias - 747544");
        $display("Test ALU's equality comparator");

        
        $monitor("f(%5b, %5b) = %b", x, y, resultado);
        // $monitor("f(%4b, %4b) = %b", x);
        x = 5'b00000; y = 5'b00000;
        #1 x = 5'b00001; y = 5'b00000;
        #1 x = 5'b00001; y = 5'b00001;
        #1 x = 5'b00001; y = 5'b00100;
        #1 x = 5'b10101; y = 5'b10100;
        #1 x = 5'b11100; y = 5'b00011;
        #1 x = 5'b01100; y = 5'b01100;
// initial begin

//  $display("Test ALU’s full adder");
//  $monitor("%4b \n %4b\n+%4b\n-----\n%5b\n", carry, x, y, soma);
//         x = 4'b0000; y = 4'b0000;
//         #1 x = 4'b0001; y = 4'b0000;
//         #1 x = 4'b0001; y = 4'b0001;
//         #1 x = 4'b0001; y = 4'b0100;
//         #1 x = 4'b0101; y = 4'b0100;
//         #1 x = 4'b1100; y = 4'b0011;
//         #1 x = 4'b1100; y = 4'b0100;


end
endmodule // test_fullAdder

