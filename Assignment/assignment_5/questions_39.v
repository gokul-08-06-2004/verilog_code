//39. Write a function that returns the Gray code of a 4-bit binary number.

module example;
reg [3:0]bin;
reg [3:0]grey;

function [3:0]grey_code(input [3:0]bin);
begin
grey_code[3]=bin[3];
grey_code[2]=bin[3]^bin[2];
grey_code[1]=bin[2]^bin[1];
grey_code[0]=bin[1]^bin[0];

end
endfunction

initial begin

bin=4'b1010;

grey=grey_code(bin);
$display("bin=%b grey_code=%b",bin,grey);
end
endmodule

