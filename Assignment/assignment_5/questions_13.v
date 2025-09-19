/*module avg_task_demo;

    integer arr[0:6];    
    integer avg;         

    task average(input integer size,output integer average);
        integer i, sum;
        begin
            sum = 0;
            for (i = 0; i < size; i = i + 1) begin
                sum = sum + arr[i];   
            end
            average = sum / size;
        end
    endtask

    initial begin
        arr[0] = 10;
        arr[1] = 20;
        arr[2] = 30;
        arr[3] = 40;
        arr[4] = 50;
        arr[5]=60;
        arr[6]=70;
        average(arr, 7, avg);

        $display("Array = %0d avg=%0d", arr,avg);
        

        $finish;
    end
endmodule*/

module avg_task_demo;

    reg [7:0] arr [0:6];   
    integer avg;
    integer i;
    task calc_average(input integer size, output integer average);
        integer sum;
        begin
            sum = 0;
            for (i = 0; i < size; i = i + 1) begin
                sum = sum + arr[i];
            end
            average = sum / size;
        end
    endtask

    initial begin
        
        arr[0] = 10;
        arr[1] = 20;
        arr[2] = 30;
        arr[3] = 40;
        arr[4] = 50;
        arr[5] = 60;
        arr[6] = 70;

    
        calc_average(7, avg);

        $display("Average = %0d", avg);

        $finish;
    end
endmodule
