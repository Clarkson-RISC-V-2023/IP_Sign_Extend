module sign_extend # (
    // Parameters go here
    parameter IN_BUS_WIDTH = 12,
    parameter OUT_BUS_WIDTH = 32

)(
    // Define ports, inputs and outputs
    input wire [IN_BUS_WIDTH-1:0] data_in,    // Input data
    output reg [OUT_BUS_WIDTH-1:0] data_out  // Output Signal
);
    // Define regs & wires

    // Define RTL
    always @ (data_in)
    begin
        data_out <= {{(OUT_BUS_WIDTH-IN_BUS_WIDTH){data_in[IN_BUS_WIDTH-1]}},data_in};
    end
endmodule