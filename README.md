# VHDL Counter Overflow Bug
This repository demonstrates a common bug in VHDL code involving integer overflow in a counter.  The `buggy_counter.vhdl` file contains the erroneous code.  The `fixed_counter.vhdl` provides a corrected version.

## Bug Description
The original counter design doesn't explicitly handle the case where the counter reaches its maximum value (15 in this case).  When the counter increments beyond 15, it might wrap around unexpectedly, causing incorrect behavior in a larger design. This is a subtle bug that can be difficult to detect through simulation alone, especially in larger systems.  The corrected version demonstrates a more robust approach.

## How to Reproduce
1.  Compile and simulate `buggy_counter.vhdl`. Observe the counter's behavior when it reaches and surpasses 15.
2. Compile and simulate `fixed_counter.vhdl` to observe the corrected behavior.