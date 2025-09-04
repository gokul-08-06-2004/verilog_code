//Realtime for Simulation Time
//Use realtime current_time = $realtime;
//Display floating-point simulation time.

module real_time;

realtime current_time;

initial begin

current_time=$realtime;#10
$display("current_time=%0f",$realtime);

#10
$finish;
end
endmodule

