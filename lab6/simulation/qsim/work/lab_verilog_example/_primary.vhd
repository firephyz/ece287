library verilog;
use verilog.vl_types.all;
entity lab_verilog_example is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : in     vl_logic;
        d               : in     vl_logic;
        e               : in     vl_logic;
        g               : in     vl_logic_vector(1 downto 0);
        out1            : out    vl_logic;
        out2            : out    vl_logic;
        out3            : out    vl_logic_vector(1 downto 0)
    );
end lab_verilog_example;
