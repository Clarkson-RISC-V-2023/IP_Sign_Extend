module <new_ip_tb_name> # (
    // Parameters go here
);

    // Define regs & wires

    // Define DUT 
    new_ip #(
        // DUT parameters 
    ) dut (
        // Bind ports
    );

    initial begin
        // define test bench
        $dumpfile("<new_ip_name>.vcd");
        $dumpvars(0, <new_ip_tb_name>);

        #100 $finish;
    end
endmodule