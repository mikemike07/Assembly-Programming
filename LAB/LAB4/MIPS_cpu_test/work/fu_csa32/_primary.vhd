library verilog;
use verilog.vl_types.all;
entity fu_csa32 is
    port(
        din1            : in     vl_logic_vector(31 downto 0);
        din2            : in     vl_logic_vector(31 downto 0);
        carry_in        : in     vl_logic;
        dout            : out    vl_logic_vector(31 downto 0);
        carry_out       : out    vl_logic;
        overflow        : out    vl_logic
    );
end fu_csa32;
