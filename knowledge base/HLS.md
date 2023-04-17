High Level Synthesis

[Wiki article](https://en.wikipedia.org/wiki/High-level_synthesis)

>**High-level synthesis** (**HLS**), sometimes referred to as **C synthesis**, **electronic system-level (ESL) synthesis**, **algorithmic synthesis**, or **behavioral synthesis**, is an automated design process that takes an abstract behavioral specification of a digital system and finds a register-transfer level structure that realizes the given behavior.

For our purposes, it is the process by which human readable code is turned into an appropriate transistor logic, like converting a C program into a set of logic gates that performs the same task.

There are usually a bunch of parameters associated with this process. We can chose to make a set of gate's more serial or parallel at the cost of benefit of more or less resources. Messing around with these parameters determines how fast the algorithm is on the board as well if it will even fit on the [FPGA](FPGAs.md).

At CMS we need the algos to fit on a board, and to run fast enough to make decisions at ~40MHz. An important consideration is also power consumption.