	component addsys is
		port (
			clk_clk                : in  std_logic                    := 'X';             -- clk
			reset_reset_n          : in  std_logic                    := 'X';             -- reset_n
			my_adder_conduit_out_o : out std_logic_vector(7 downto 0);                    -- o
			my_adder_conduit_in_a  : in  std_logic_vector(7 downto 0) := (others => 'X'); -- a
			my_adder_conduit_in_b  : in  std_logic_vector(7 downto 0) := (others => 'X')  -- b
		);
	end component addsys;

	u0 : component addsys
		port map (
			clk_clk                => CONNECTED_TO_clk_clk,                --                  clk.clk
			reset_reset_n          => CONNECTED_TO_reset_reset_n,          --                reset.reset_n
			my_adder_conduit_out_o => CONNECTED_TO_my_adder_conduit_out_o, -- my_adder_conduit_out.o
			my_adder_conduit_in_a  => CONNECTED_TO_my_adder_conduit_in_a,  --  my_adder_conduit_in.a
			my_adder_conduit_in_b  => CONNECTED_TO_my_adder_conduit_in_b   --                     .b
		);

