## arithmetic-testbench
# TODO
- [ ] Vertical LFSRs
- [x] ~Timed start and end of test. Reading values taking 20k cycles @400MHz~
- [ ] Simultaneous reads for register outs in script
- [ ] Method to determine DUT delay
- [ ] Build arbiter in monitor, crossing time domain to `clk_tb`
- [ ] Collect event as a register of width = number of sub monitors
- [ ] Scoreboard that accumulates this register together