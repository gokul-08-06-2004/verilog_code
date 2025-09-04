//13.2D Memory Access
//Declare reg [7:0] mem[3:0][3:0];
//Write nested loops to assign values and print specific bytes like mem[3][2].

module Memory_2D();

reg[7:0] mem[3:0][3:0];
integer i;
integer j;
initial begin

for(i=0;i<4;i=i+1)
begin
	for(j=0;j<4;j=j+1)
	begin
		mem[i][j]=i+j;
	end
end

for(i=0;i<4;i=i+1)
begin
        for(j=0;j<4;j=j+1)
        begin
		$write("%3d",mem[i][j]);
	end
	$write("\n");
end

$display("mem[3][2]=%0d binary=%b",mem[3][2],mem[3][2]);

$finish;
end
endmodule
