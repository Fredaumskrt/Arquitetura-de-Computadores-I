// -------------------------
// Exemplo_0801 - FULL ADDER
// Nome: Frederico Malaquias
// Matricula: 747544
// -------------------------
// -------------------------
// half adder
// -------------------------
module halfAdder(output s1,
output s0,
input a,
input b);

xor XOR1(s0, a, b); 
and AND1(s1, ~a, b); 
endmodule 

// -------------------------
// full difference
// -------------------------
module fullAdder(output s1,
 output s0,
 input a, 
 input b, 
 input carryIn);

  wire restanteHA, carryHD;
  wire NOTrestanteHA_AND_carryHD;

    halfAdder HD0(carryHD, restanteHD, a, b);
    xor XOR1(s0, restanteHD, carryIn);
    and AND1(NOTrestanteHD_AND_carryHD, ~restanteHD, carryIn);
    or OR1(s1, NOTrestanteHD_AND_carryHD, carryHD);
endmodule 

module test_fullDifference;
    // ------------------------- definir dados
    reg [5:0] x;
    reg [5:0] y;
    wire [5:0] carry; 
    wire [5:0] restante;
    
    fullAdder FA0(carry[0], restante[0], x[0], y[0], 1'b0);
    fullAdder FA1(carry[1], restante[1], x[1], y[1], carry[0]);
    fullAdder FA2(carry[2], restante[2], x[2], y[2], carry[1]);
    fullAdder FA3(carry[3], restante[3], x[3], y[3], carry[2]);
    fullAdder FA4(carry[4], restante[4], x[4], y[4], carry[3]);
    fullAdder FA5(carry[5], restante[5], x[5], y[5], carry[4]);

    // ------------------------- parte principal
    initial begin
        $display("Exemplo_0802 - Frederico Malaquias - 747544");
        $display("Test ALU's full difference");

        
        $monitor("%6b \n %6b\n-%6b\n-------\n %6b\n", carry, x, y, restante);
        x = 6'b000000; y = 6'b000000;
        #1 x = 6'b000001; y = 6'b000000;
        #1 x = 6'b000001; y = 6'b000001;
        #1 x = 6'b000001; y = 6'b000100;
        #1 x = 6'b000101; y = 6'b000100;
        #1 x = 6'b001100; y = 6'b000011;
        #1 x = 6'b101100; y = 6'b010100;
    end
endmodule


