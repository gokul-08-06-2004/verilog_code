//56. Write a testbench that tests a multiplexer by toggling select lines

module mux(input  [1:0]s,input [3:0]i,output y);

assign y = (s[1])?((s[0])?i[3]:i[2]):((s[0]?i[1]:i[0]));

endmodule 
