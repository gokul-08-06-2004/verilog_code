module binary_format;
reg [5:0]y;
initial begin 
 y='Ox2;
$display("binary_format=%b",y);
$finish;
end 
endmodule 
