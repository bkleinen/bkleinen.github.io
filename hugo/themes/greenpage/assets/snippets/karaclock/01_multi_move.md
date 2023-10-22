

#### 1. Multi-Move

1. copy the multiMove method we discussed in class from `chapter02/kara/kara-loop-examples` to DigitDisplayKara (the method definition is already there, you just need to fill it). Test it in TestWorld0 and TestWorld1. TestWorld1 contains a setup you don't need to understand just now - just click "act" once and all Karas should be aligned in the middle like this:

| Initial TestWorld1                            | TestWorld1 after act()                      |
|:----------------------------------------------|:--------------------------------------------|
| ![TestWorld1 before](/karaclock/01_multi_move/testworld1-before.jpg) | ![TestWorld1 after](/karaclock/01_multi_move/testworld1-after.jpg) |


2. Extend Multi-Move to move backwards: Extend the multiMove(int steps)-method to allow Kara to move backwards if a negative number is passed as parameter. It should turnAround (a method with the same name might be handy), move the appropriate number of steps and turnAround again. Hint: You can get the absolute value of a number `steps` using `Math.abs(steps)`. Use TestWorld0 during the development; after
you're done test it in TestWorld2:

| Initial TestWorld2                            | TestWorld2 after act()                      |
|:----------------------------------------------|:--------------------------------------------|
| ![TestWorld1 before](/karaclock/01_multi_move/testworld2-before.jpg) | ![TestWorld1 after](/karaclock/01_multi_move/testworld2-after.jpg) |
