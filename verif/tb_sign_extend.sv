module tb_sign_extend # (
    // Parameters go here
    parameter IN_BUS_WIDTH = 12,
    parameter OUT_BUS_WIDTH = 32
);

    // Define regs & wires
    reg [IN_BUS_WIDTH-1:0]data_in;
    wire [OUT_BUS_WIDTH-1:0] data_out;
    // Define DUT 
    sign_extend #(
        .IN_BUS_WIDTH(12),
        .OUT_BUS_WIDTH(32)
    ) dut (
        // Bind ports
        .data_in(data_in),
        .data_out(data_out)
    );

    initial begin
        // define test bench
        $dumpfile("sign_extend.vcd");
        $dumpvars(0, tb_sign_extend);

        //checking positive input
        data_in <= 12'b001010101010;
        #100
        // Checking 1/negative
        data_in = 12'b100001111111;
        #100
        data_in = 12'b011111111111;
        #100 $finish;
    end
endmodule