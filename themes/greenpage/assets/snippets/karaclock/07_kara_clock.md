#### 7. The first Kara Clock

Now, with your completed DigitalDisplayKara, the first Kara Clock can be built.

Open `ClockDisplayWorld1` - it contains three DigitDisplayKaras: one for minutes, one for ten minutes, and one for hours.
Experiment a bit with it!

Showing 24 hours is difficult though - 24 leaves would be too much, using two digits - one for 10 hours, one for single hours - would need to toggle the 
limit for the single hour DigitDisplayKara between 10 and 4.

If you want a *real* clock open `ClockDisplayWorld12Hours`. It starts a thread and calls tick() every second, you can start and stop it using the
respective methods in `ClockDisplayKara`

