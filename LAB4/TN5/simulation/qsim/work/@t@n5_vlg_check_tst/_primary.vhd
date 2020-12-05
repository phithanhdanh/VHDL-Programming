library verilog;
use verilog.vl_types.all;
entity TN5_vlg_check_tst is
    port(
        Q               : in     vl_logic;
        Qn              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end TN5_vlg_check_tst;
