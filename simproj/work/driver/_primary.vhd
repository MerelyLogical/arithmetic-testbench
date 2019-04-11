library verilog;
use verilog.vl_types.all;
entity driver is
    generic(
        WIDTH           : integer := 32
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        clk_dut         : in     vl_logic;
        reset_dut       : in     vl_logic;
        i_rand_a        : in     vl_logic_vector(31 downto 0);
        i_rand_b        : in     vl_logic_vector(31 downto 0);
        o_drive_a       : out    vl_logic_vector(31 downto 0);
        o_drive_b       : out    vl_logic_vector(31 downto 0);
        o_drive_delayed_a: out    vl_logic_vector(31 downto 0);
        o_drive_delayed_b: out    vl_logic_vector(31 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
end driver;
