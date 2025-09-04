//10.Part Select Operation
//Extract lower nibble from reg [7:0] bus using bus[3:0].

module part_select();

reg [7:0]bus;

reg [3:0]lower_nibble ;

initial begin

bus=8'b00101011;
lower_nibble=bus[3:0];

$display("lower_nibble=%b",lower_nibble);

$finish;
end
endmodule

