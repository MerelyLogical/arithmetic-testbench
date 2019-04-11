library verilog;
use verilog.vl_types.all;
entity monitor is
    generic(
        WIDTH           : integer := 32;
        NUM_SUB_MON     : integer := 4
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        i_dut_ia        : in     vl_logic_vector;
        i_dut_ib        : in     vl_logic_vector;
        i_dut_os        : in     vl_logic_vector;
        o_event         : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
    attribute mti_svvh_generic_type of NUM_SUB_MON : constant is 1;
end monitor;
