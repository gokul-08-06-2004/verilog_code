//4. Register Assignment
//Create a module that uses:
//• reg [7:0] data
//Assign and display a binary value.


module register();

reg [7:0]data;

initial begin


data=8'b00000010;#1
$display("data=%b:",data);


$finish ;

end
endmodule

