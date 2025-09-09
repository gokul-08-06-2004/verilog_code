module t();
time t;
initial begin
#10 t=$time;
#20;
$display("Time=%0t",t);
end
endmodule 
