library verilog;
use verilog.vl_types.all;
entity test_wrapper is
    generic(
        SYS_VERSION     : integer := 7;
        WIDTH           : integer := 32
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        clk_tb          : in     vl_logic;
        reset_tb        : in     vl_logic;
        clk_dut         : in     vl_logic;
        reset_dut       : in     vl_logic;
        slave_address   : in     vl_logic_vector(3 downto 0);
        slave_read      : in     vl_logic;
        slave_write     : in     vl_logic;
        slave_writedata : in     vl_logic_vector;
        slave_readdata  : out    vl_logic_vector;
        dut_a           : out    vl_logic_vector;
        dut_b           : out    vl_logic_vector;
        dut_s           : in     vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of SYS_VERSION : constant is 1;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
end test_wrapper;
