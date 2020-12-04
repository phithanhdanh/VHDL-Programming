library verilog;
use verilog.vl_types.all;
entity TN5_Behavioral_vlg_sample_tst is
    port(
        SW              : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end TN5_Behavioral_vlg_sample_tst;
