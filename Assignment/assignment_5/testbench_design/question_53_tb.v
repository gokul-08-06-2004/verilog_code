module full_adder_tb;

reg a,b,cin;
wire sum,carry;
integer i;

full_adder dut(a,b,cin,sum,carry);


function [2:0]full_add(input integer  a);
begin
full_add[2]=(a>>2)&1;
full_add[1]=(a>>1)&1;
full_add[0]=a&1;
end
endfunction

task full_adders(input reg a,b,cin);begin
a=a;
b=b;
cin=cin;
#10;
$display("a=%b b=%b cin=%b sum=%b carry=%b",a,b,cin,sum,carry);
end
endtask

initial begin

for(i=0;i<8;i=i+1)begin
{a,b,cin}=full_add(i);
full_adders(a,b,cin);

end
$finish;
end
endmodule


