module demux_2x1(input i,sel,output [1:0]y );

assign y[0]=sel?0:i;
assign y[1]=sel?i:0;

endmodule

