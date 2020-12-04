library verilog;
use verilog.vl_types.all;
entity TN5_Behavioral_vlg_check_tst is
    port(
        LEDR            : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end TN5_Behavioral_vlg_check_tst;
