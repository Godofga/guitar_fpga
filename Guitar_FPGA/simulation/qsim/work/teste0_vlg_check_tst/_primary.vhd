library verilog;
use verilog.vl_types.all;
entity teste0_vlg_check_tst is
    port(
        d7seg           : in     vl_logic_vector(8 downto 0);
        dig7seg         : in     vl_logic_vector(1 downto 0);
        LED             : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end teste0_vlg_check_tst;
