#### 4. Increment Leaves

1. Open TestWorld4 again. Complete the method `public int increment()` in `DigitDisplayKara`.
   It should call `public int moveUpAndCount()` and then either
   a. add one more leaf, return to the original position using  `public int multiMove()` and return the new leaf count (including the leaf just added)
   b. if the tree is reached (no more space, overflow!) return to the original position and collect all leaves on its way (hint: this is exactly like multiMove with one addition!) and return a 0 as the new leaf count.

2. When you're done, test your method in `TestWorld7Increment`, which contains some edge cases like a full row and one with zero leaves.

| before             | output                                                          | after act()                                                   |
|:-------------------|:----------------------------------------------------------------|:--------------------------------------------------------------|
| ![TestWorld7 before](/karaclock/04_increment/world7_before.jpg)  | ![TestWorld7 output](/karaclock/04_increment/world7-output.jpg) | ![TestWorld7 after](/karaclock/04_increment/world7_after.jpg) |
