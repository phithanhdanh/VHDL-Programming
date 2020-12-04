library verilog;
use verilog.vl_types.all;
entity TN4 is
    port(
        SW              : in     vl_logic_vector(0 to 2);
        F               : out    vl_logic
    );
end TN4;
