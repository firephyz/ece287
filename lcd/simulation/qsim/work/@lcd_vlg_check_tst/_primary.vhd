library verilog;
use verilog.vl_types.all;
entity Lcd_vlg_check_tst is
    port(
        command_out     : in     vl_logic_vector(9 downto 0);
        counter_out     : in     vl_logic_vector(15 downto 0);
        data_out_pin    : in     vl_logic_vector(7 downto 0);
        enable_pin      : in     vl_logic;
        power_pin       : in     vl_logic;
        rs_pin          : in     vl_logic;
        rw_pin          : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Lcd_vlg_check_tst;
