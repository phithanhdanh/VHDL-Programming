library verilog;
use verilog.vl_types.all;
entity TN4_vlg_sample_tst is
    port(
        Cl              : in     vl_logic;
        Clk             : in     vl_logic;
        D               : in     vl_logic;
        Pr              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end TN4_vlg_sample_tst;
