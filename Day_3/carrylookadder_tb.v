module carrylookadder_tb;
    reg [3:0]a,b;
    reg cin;
    wire [3:0]s;
    wire cout;

    carrylookadder dut (a,b,cin,s,cout);

    initial begin
        $monitor("A=%b B=%b Cin=%b | Sum=%b Cout=%b", a,b,cin,s,cout);
        $dumpfile("carrylookadder.vcd");
	$dumpvars();

        a=4'b0001; b=4'b0010; cin=0; #10;
        a=4'b1010; b=4'b0101; cin=0; #10;
        a=4'b1111; b=4'b0001; cin=1; #10;
        a=4'b1100; b=4'b1100; cin=0; #10;

        $finish;
    end
endmodule
