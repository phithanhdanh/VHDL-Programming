library verilog;
use verilog.vl_types.all;
entity TN5_vlg_sample_tst is
    port(
        Cl              : in     vl_logic;
        Clk             : in     vl_logic;
        J               : in     vl_logic;
        K               : in     vl_logic;
        Pr              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end TN5_vlg_sample_tst;
