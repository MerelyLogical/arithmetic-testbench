## TODO
# Main
- [ ] Vertical LFSRs
- [ ] ~Timed start and end of test. Reading values taking 20k cycles @400MHz~
- [ ] ~Simultaneous reads for register outs in script~ Limited by width of bridge (lw is only 32 bits wide)
- [x] ~`ready` signal that propogates with the first test data and ends with the last to stop counting~ Solved with `ready` from monitor and `freeze` to scoreboard.
- [x] Build inverse multiplexer in monitor
- [ ] Crossing time domain to `clk_tb` for sub monitors
- [x] Collect event as a register of width = number of sub monitors
- [x] Monitor that accumulates this register together
- [ ] Make TimeQuest work with clk_tb again
- [x] fix error events at the start of each run
- [x] ModelSim doesn't work with `test_wrapper`. ~How to include other files?~
- [x] Separate avalon slave from main testbench

# Low priority
- [ ] Upgrade PLL config class to python3
- [ ] Method to determine DUT delay
- [ ] Consider regular AXI bridge vs lightweight bridge
- [ ] Investigate interesting warning from Quartus
- [ ] Write to `/dev/leds` and stuff for coolness
- [ ] sub monitors only have `NUM_SUB_MON-1` cycles to get result, system breaks when only one sub monitor. Intentional?

## Notes
# Compilation time
3rd floor PC
	* Window 7 enterprise sp1
	* i7-4770 @ 3.40GHz
	* 8 GB
	* Unknown network drive
	* 13m12s, 13m00s, 13m08s
