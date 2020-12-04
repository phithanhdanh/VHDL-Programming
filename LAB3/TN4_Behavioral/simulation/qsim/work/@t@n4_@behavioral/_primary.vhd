library verilog;
use verilog.vl_types.all;
entity TN4_Behavioral is
    port(
        SW              : in     vl_logic_vector(0 to 2);
        LEDR            : out    vl_logic_vector(0 downto 0)
    );
end TN4_Behavioral;
