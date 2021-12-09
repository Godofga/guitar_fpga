library verilog;
use verilog.vl_types.all;
entity teste0_vlg_sample_tst is
    port(
        CLOCK_50        : in     vl_logic;
        ehkey           : in     vl_logic_vector(9 downto 0);
        KEY             : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end teste0_vlg_sample_tst;
