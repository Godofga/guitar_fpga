library verilog;
use verilog.vl_types.all;
entity teste0 is
    port(
        CLOCK_50        : in     vl_logic;
        KEY             : in     vl_logic_vector(1 downto 0);
        LED             : out    vl_logic_vector(7 downto 0);
        ehkey           : in     vl_logic_vector(9 downto 0);
        dig7seg         : out    vl_logic_vector(1 downto 0);
        d7seg           : out    vl_logic_vector(8 downto 0)
    );
end teste0;
