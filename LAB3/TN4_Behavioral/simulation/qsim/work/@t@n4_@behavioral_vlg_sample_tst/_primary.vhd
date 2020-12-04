library verilog;
use verilog.vl_types.all;
entity TN4_Behavioral_vlg_sample_tst is
    port(
        SW              : in     vl_logic_vector(0 to 2);
        sampler_tx      : out    vl_logic
    );
end TN4_Behavioral_vlg_sample_tst;
