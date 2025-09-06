module decoder_2x4(input [1:0]a,output [3:0]y );

assign y[3:0]=(a[0]==0 && a[1]==0)?4'b0001:
	 (a[0]==0 && a[1]==1)?4'b0010:
         (a[0]==1 && a[1]==0)?4'b0100:
		              4'b1000;

endmodule
