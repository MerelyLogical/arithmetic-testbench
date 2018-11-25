	addsys u0 (
		.clk_clk                (<connected-to-clk_clk>),                //                  clk.clk
		.reset_reset_n          (<connected-to-reset_reset_n>),          //                reset.reset_n
		.my_adder_conduit_out_o (<connected-to-my_adder_conduit_out_o>), // my_adder_conduit_out.o
		.my_adder_conduit_in_a  (<connected-to-my_adder_conduit_in_a>),  //  my_adder_conduit_in.a
		.my_adder_conduit_in_b  (<connected-to-my_adder_conduit_in_b>)   //                     .b
	);

