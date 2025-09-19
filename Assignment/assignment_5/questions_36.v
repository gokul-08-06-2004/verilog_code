//36. Create a function that implements a multiplexer (selects 1 of 4 inputs).

 module example;
reg [1:0]sel;
reg [3:0]i;
reg out;

function multiplexer(input [1:0]sel,input [3:0]i);
begin

case(sel)
2'b00:multiplexer=i[0];
2'b01:multiplexer=i[1];
2'b10:multiplexer=i[2];
2'b11:multiplexer=i[3];
default:multiplexer=1'b0;

endcase
end
endfunction

initial begin
$monitor("sel=%b i[3]=%b i[2]=%b i[1]=%b i[0]=%b ",sel,i[3],i[2],i[1],i[0]);


sel=2'b00;i=4'b0001;#10
sel=2'b01;i=4'b0010;#10
sel=2'b10;i=4'b0100;#10
sel=2'b11;i=4'b1000;#10

out=multiplexer(sel,i);


end
endmodule
