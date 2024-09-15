#### 0. Count Leaves with act() loop and a field

(optional if you skip to 2. Count Leaves but also a good preparation for it)

1. Open `TestWorld4WithMyKara`. Make Kara move up to the tree and count the leaves found on it's way.
   It should move up and count one step with each call to the act() method. 
   It should stop (by calling `Greenfoot.stop();`)  either at the tree above or on the first free field. 
   
   Add an accessor(getter) (public int getCount() or similar) to return the number of leaves counted so far.
   