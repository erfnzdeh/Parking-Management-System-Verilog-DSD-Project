module TB_parking_management_system;
    reg clk;
    reg reset;
    reg car_entered;
    reg car_exited;
    reg is_uni_car_entered;
    reg is_uni_car_exited;
    wire [9:0] uni_parked_car;
    wire [9:0] parked_car;
    wire [9:0] uni_vacated_space;
    wire [9:0] vacated_space;
    wire uni_is_vacated_space;
    wire is_vacated_space;

    integer outfile;

    parking_management_system uut (
        .clk(clk), 
        .reset(reset), 
        .car_entered(car_entered), 
        .car_exited(car_exited), 
        .is_uni_car_entered(is_uni_car_entered), 
        .is_uni_car_exited(is_uni_car_exited), 
        .uni_parked_car(uni_parked_car), 
        .parked_car(parked_car), 
        .uni_vacated_space(uni_vacated_space), 
        .vacated_space(vacated_space), 
        .uni_is_vacated_space(uni_is_vacated_space), 
        .is_vacated_space(is_vacated_space)
    );

    parameter CLK_PERIOD = 10;
    parameter DELAY = 10;

    always begin
        # (CLK_PERIOD / 2) clk = ~clk;
    end

    task display_state;
        begin
            $fwrite(outfile, "Time: %0t\nNumber of university cars currently parked: %d\nNumber of non-university cars currently parked: %d\nNumber of vacated spaces reserved for university cars: %d\nNumber of vacated spaces for non-university cars: %d\nIs there a vacated space for university cars? %s\nIs there a vacated space for non-university cars? %s\n", 
                     $time, uni_parked_car, parked_car, uni_vacated_space, vacated_space, 
                     uni_is_vacated_space ? "yes" : "no", 
                     is_vacated_space ? "yes" : "no");
        end
    endtask

    task car_enter(
        input is_uni
    );
        begin
            car_entered = 1;
            is_uni_car_entered = is_uni;
            #DELAY;
            car_entered = 0;
            is_uni_car_entered = 0;
            display_state();
        end
    endtask

    task car_exit(
        input is_uni
    );
        begin
            car_exited = 1;
            is_uni_car_exited = is_uni;
            #DELAY;
            car_exited = 0;
            is_uni_car_exited = 0;
            display_state();
        end
    endtask

    initial begin
        outfile = $fopen("output_results.txt", "w");

        clk = 0;
        reset = 0;
        car_entered = 0;
        car_exited = 0;
        is_uni_car_entered = 0;
        is_uni_car_exited = 0;

        $fwrite(outfile, "Resetting the system...\n");
        reset = 1;
        #DELAY;
        reset = 0;
        #DELAY;

        // Test normal operations
        $fwrite(outfile, "Event 1: Uni Car Enters");
        car_enter(1);

        $fwrite(outfile, "Event 2: Another Uni Car Enters");
        car_enter(1);

        $fwrite(outfile, "Event 3: Non-Uni Car Enters");
        car_enter(0);

        $fwrite(outfile, "Event 4: Non-Uni Car Exits");
        car_exit(0);

        $fwrite(outfile, "Event 5: Uni Car Exits");
        car_exit(1);

        $fwrite(outfile, "Event 6: Non-Uni Car Enters Again");
        car_enter(0);

        #6000000;
        $fwrite(outfile, "Event 7: Non-Uni Car Enters After Long Delay");
        car_enter(0);

        // Test edge cases
        $fwrite(outfile, "Event 8: Fill up university parking spaces");
        repeat (500) begin
            car_enter(1);
        end

        $fwrite(outfile, "Event 9: Fill up non-university parking spaces");
        repeat (200) begin
            car_enter(0);
        end

        $fwrite(outfile, "Event 10: Attempt to park another university car (should fail)");
        car_enter(1);

        $fwrite(outfile, "Event 11: Attempt to park another non-university car (should fail)");
        car_enter(0);

        $fwrite(outfile, "Event 12: Exit a university car");
        car_exit(1);

        $fwrite(outfile, "Event 13: Exit a non-university car");
        car_exit(0);

        $fwrite(outfile, "Event 14: Park a university car after space is vacated");
        car_enter(1);

        $fwrite(outfile, "Event 15: Park a non-university car after space is vacated");
        car_enter(0);

        $fclose(outfile);

        $finish;
    end

endmodule