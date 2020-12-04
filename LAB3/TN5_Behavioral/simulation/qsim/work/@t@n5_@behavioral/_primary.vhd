library verilog;
use verilog.vl_types.all;
entity TN5_Behavioral is
    port(
        SW              : in     vl_logic_vector(7 downto 0);
        LEDR            : out    vl_logic_vector(3 downto 0)
    );
end TN5_Behavioral;
