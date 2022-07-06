/*
 
 Nome: Frederico Malaquias 
 Matrícula: 747544

 */

module D (output q, output qnot, // definir os outputs
           input d,
           input clk, input clear);

reg q, qnot;

always @ ( posedge clk or clear )
begin
    if (clear)
    begin q<=0; qnot<=1; end
    else
    begin q<=d; qnot<=~d; end
end
endmodule

module Esq5bit (output a, b, c, d, e,
                input clk, in, clear);
wire b_out, c_out, d_out, e_out, gnd;
D da(a, gnd, b_out, clk, clear);
D db(b_out, gnd, c_out, clk, clear);
D dc(c_out, gnd, d_out, clk, clear);
D dd(d_out, gnd, e_out, clk, clear);
D de(e_out, gnd, in, clk, clear);

assign b = b_out;
assign c = c_out;
assign d = d_out;
assign e = e_out;

endmodule

module main;

//definicoes
reg clk, clear;
reg in;
wire a, b, c, d, e;

Esq5bit Exemplo1 (a, b, c, d, e, clk, in, clear);

initial
begin
$display(" a b c d e");
   
    clk    = 1;
    in     = 0;
    clear  = 1;

   
    #4 clear = 0; in = 1;
    #4 in = 0;

    #20 $finish;
end

always
#2 clk=~clk;

always @ (negedge clk)
begin
    $display(" %b %b %b %b %b", a, b, c, d, e);
end
endmodule