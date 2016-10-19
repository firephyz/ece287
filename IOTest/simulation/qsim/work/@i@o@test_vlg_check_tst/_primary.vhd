library verilog;
use verilog.vl_types.all;
entity IOTest_vlg_check_tst is
    port(
        io              : in     vl_logic_vector(1 downto 0);
        peaker          : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end IOTest_vlg_check_tst;
