/* Nome:  Frederico Malaquias
   Turma: 747544
          Guia13
*/

//D Flip Flop
module D (output q, output qnot, input d, input clk, input clear, input preset);

reg q, qnot;

always @ ( posedge clk or clear or preset )
begin
    if (clear) begin q<=0; qnot<=1; end
    else
      if (preset) begin q<=1; qnot<=0; end
      else
        begin q<=d; qnot<=~d; end
end
endmodule

//JK Flip Flop
module JK (output q, output qnot,
           input j, input k,
           input clk, input clear, input preset);

reg q, qnot;

always @ (posedge clk or clear or preset)
begin
    if (clear) begin q<=0; qnot<=1; end
    else
      if (preset) begin q<=1; qnot<=0; end
      else
      if (j&~k) begin q<=1; qnot<=0; end
      else
        if (~j&k) begin q<=0; qnot<=1; end
        else
        if (j&k) begin q<=~q; qnot<=~qnot; end
end
endmodule

module ContDecaCres (output a, b, c, d, e,
                input clk, in, clear, preset);
wire gnd, clear1;
reg reset = 0;
assign clear1 = clear|reset;

JK ffa(a, gnd, in, in, ~b, clear1, preset);
JK ffb(b, gnd, in, in, ~c, clear1, preset);
JK ffc(c, gnd, in, in, ~d, clear1, preset);
JK ffd(d, gnd, in, in, ~e, clear1, preset);
JK ffe(e, gnd, in, in, clk, clear1, preset);

always @ (clk) begin
if (~a&b&~c&d&~e) begin reset=1; #1 reset=0; end
end

endmodule

module main;

//definicoes
reg clk, clear, preset;
reg in;
wire[4:0] out;

ContDecaCres Exemplo3 (out[4], out[3], out[2], out[1], out[0], clk, in, clear, preset);

initial
begin
$display(" a b c d e decimal");
    //initial values
    clk    = 1;
    in     = 0;
    clear  = 1;
    preset = 0;

    //input signal changing
    #1 clear = 0; #1 in = 1;

    #132 $finish;
end//initial begin

always
#2 clk=~clk;

always @ (negedge clk)
begin
    $display(" %b %b %b %b %b %d", out[4], out[3], out[2], out[1], out[0], out);
end
endmodule
