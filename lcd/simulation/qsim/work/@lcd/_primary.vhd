library verilog;
use verilog.vl_types.all;
entity Lcd is
    port(
        altera_reserved_tms: in     vl_logic;
        altera_reserved_tck: in     vl_logic;
        altera_reserved_tdi: in     vl_logic;
        altera_reserved_tdo: out    vl_logic;
        start           : in     vl_logic;
        data_out_pin    : inout  vl_logic_vector(7 downto 0);
        rw_pin          : out    vl_logic;
        rs_pin          : out    vl_logic;
        power_pin       : out    vl_logic;
        enable_pin      : out    vl_logic;
        clk             : in     vl_logic
    );
end Lcd;
