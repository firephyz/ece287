library verilog;
use verilog.vl_types.all;
entity lab_verilog_example_vlg_check_tst is
    port(
        out1            : in     vl_logic;
        out2            : in     vl_logic;
        out3            : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end lab_verilog_example_vlg_check_tst;
