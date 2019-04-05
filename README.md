## arithmetic-testbench
# TODO
- [ ] Vertical LFSRs
- [ ] ~Timed start and end of test. Reading values taking 20k cycles @400MHz~
- [ ] Simultaneous reads for register outs in script
- [x] Build inverse multiplexer in monitor
- [ ] Crossing time domain to `clk_tb` for sub monitors
- [x] Collect event as a register of width = number of sub monitors
- [x] Monitor that accumulates this register together
- [ ] Make TimeQuest work with clk_tb again
- [ ] fix 7 error events at the start of each run

# Low priority TODO
- [ ] Upgrade PLL config class to python3
- [ ] Method to determine DUT delay
- [ ] Consider regular AXI bridge vs lightweight bridge
- [ ] Investigate interesting warning from Quartus