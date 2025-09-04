module reg_procedural(output reg a,output reg b);

initial begin 

$monitor("a=%b b=%b",a,b);
a=1;
b=1;
#10
$finish;
end
endmodule

