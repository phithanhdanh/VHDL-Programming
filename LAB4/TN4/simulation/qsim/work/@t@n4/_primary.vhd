library verilog;
use verilog.vl_types.all;
entity TN4 is
    port(
        D               : in     vl_logic;
        Clk             : in     vl_logic;
        Pr              : in     vl_logic;
        Cl              : in     vl_logic;
        Q               : out    vl_logic;
        Qn              : out    vl_logic
    );
end TN4;
