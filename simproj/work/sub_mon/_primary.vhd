library verilog;
use verilog.vl_types.all;
entity sub_mon is
    generic(
        WIDTH           : integer := 32
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        i_a             : in     vl_logic_vector;
        i_b             : in     vl_logic_vector;
        o_mon_o         : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
end sub_mon;
