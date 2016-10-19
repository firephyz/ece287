library verilog;
use verilog.vl_types.all;
entity Lcd is
    port(
        data_out_pin    : inout  vl_logic_vector(7 downto 0);
        rw_pin          : out    vl_logic;
        rs_pin          : out    vl_logic;
        power_pin       : out    vl_logic;
        enable_pin      : out    vl_logic;
        clk             : in     vl_logic;
        counter_out     : out    vl_logic_vector(15 downto 0);
        command_out     : out    vl_logic_vector(9 downto 0)
    );
end Lcd;
