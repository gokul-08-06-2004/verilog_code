//9. Bit Select Access
//Use a vector reg [7:0] data
//Assign data = 8'b10101100
//Access specific bit using data[3].

module bit_select;
reg [7:0]data;

initial begin
	
data=8'b10101100;

$display("data=%b",data[3]);
#10
$finish;
end

endmodule
