library verilog;
use verilog.vl_types.all;
entity IOTest is
    port(
        in_out          : in     vl_logic;
        io              : inout  vl_logic_vector(1 downto 0);
        peaker          : out    vl_logic_vector(1 downto 0)
    );
end IOTest;
