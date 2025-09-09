module demo();
reg [3:0]a=4'b110x;
wire y;


assign y=(a==4'b1100)?1'b1:1'b0;
initial begin
$display("y=%b",y);
end
endmodule
