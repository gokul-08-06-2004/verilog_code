//12.1D Memory Model
//Declare reg [7:0] mem[7:0];
//Write and read values to/from it.

module Memory_1D();

reg [7:0] mem[7:0];
integer i;

initial begin

for(i=0; i<8;i=i+1)
begin
     mem[i]=i;
   
end
for(i=0;i<8;i=i+1)
 $display("mem[%0d]=%0d(binary:%b)",i,mem[i],mem[i]);
 end
$display("mem[3]=%0d",mem[3]);
#10	
$finish;
end
endmodule
