library verilog;
use verilog.vl_types.all;
entity scoreboard is
    generic(
        WIDTH           : integer := 32
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        i_freeze        : in     vl_logic;
        i_event         : in     vl_logic;
        o_event_ctr     : out    vl_logic_vector(31 downto 0);
        o_data_ctr      : out    vl_logic_vector(31 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
end scoreboard;
