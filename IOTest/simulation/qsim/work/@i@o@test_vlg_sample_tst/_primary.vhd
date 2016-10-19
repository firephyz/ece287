library verilog;
use verilog.vl_types.all;
entity IOTest_vlg_sample_tst is
    port(
        in_out          : in     vl_logic;
        io              : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end IOTest_vlg_sample_tst;
