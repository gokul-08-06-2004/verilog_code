module demux_4x1(input s0,s1,i,output y0,y1,y2,y3);

assign {y0,y1,y2,y3}=(s0?(s1?{1'b0,1'b0,1'b0,i}:{1'b0,1'b0,i,1'b0}):(s1?{1'b0,i,1'b0,1'b0}:{i,1'b0,1'b0,1'b0}));

endmodule


