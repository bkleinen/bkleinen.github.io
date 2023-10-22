---
title: 'KaraClock MultiMove'
author: kleinen
source: https://github.com/htw-imi-info1/exercise04
bk_ok_to_publish: false
source_ok: false
solution_pushed: false
draft: true
---

#### 1. Multi-Move
asfasdfiasdfjiasdfjo
![htw logo](/images/htw_logo_green.gif)
![TestWorld1 after](/images/snippets/karaworld/testworld1-after.jpg) |
![TestWorld1 after](/images/testworld1-after.jpg) |
![TestWorld1 after](/images/snippets/testworld1-after.jpg) |
![TestWorld1 after](/images/snippets/karaworld/testworld1-after.jpg) |


0. Open the project `chapter02/kara/kara-clock-lab02`. It contains several test worlds. Make sure you've instantiated the correct test world!
1. copy the multiMove method we discussed in class from `chapter02/kara/kara-loop-examples` to DigitDisplayKara (the method definition is already there, you just need to fill it). Test it in TestWorld0 and TestWorld1. TestWorld1 contains a setup you don't need to understand just now - just click "act" once and all Karas should be aligned in the middle like this:

| Initial TestWorld1                            | TestWorld1 after act()                      |
|:----------------------------------------------|:--------------------------------------------|
| ![TestWorld1 before](./testworld1-before.jpg) | ![TestWorld1 after](/snippets/karaworld/testworld1-after.jpg) |


2. Extend Multi-Move to move backwards: Extend the multiMove(int steps)-method to allow Kara to move backwards if a negative number is passed as parameter. It should turnAround (a method with the same name might be handy), move the appropriate number of steps and turnAround again. Hint: You can get the absolute value of a number `steps` using `Math.abs(steps)`. Use TestWorld0 during the development; after
you're done test it in TestWorld2:

| Initial TestWorld2                            | TestWorld2 after act()                      |
|:----------------------------------------------|:--------------------------------------------|
| ![TestWorld1 before](./testworld2-before.jpg) | ![TestWorld1 after](./testworld2-after.jpg) |
