#### 6. Initialize DigitDisplayKara (set count of leaves)

In order to be able to set the clock to a given time, each digit needs to be able to initialize with a given number of leaves.

This could be achieved with the same number of ticks, but would take some time and would not be as elegant.

You can use the DecimalNumberWorld to test it. After completed, call DisplayKara's `setValue(1234567890);` to achieve the pattern in part 5.