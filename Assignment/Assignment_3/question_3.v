//3. Write a module using delay in assign statement: assign #5 sum = a + b; and
//simulate the output using $monitor.


module add(input a,b,output sum);

assign #5 sum=a+b;	

endmodule
