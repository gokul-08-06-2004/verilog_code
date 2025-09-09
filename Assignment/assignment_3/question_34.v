module if_statement;
reg[3:0]a=4'b110x;
initial begin
if(a!==4'b1100)
begin:b1
$display("a!=1100");

end
else
begin:b2
 $display("a=1100");

end
end
endmodule
