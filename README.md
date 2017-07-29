# Purpose
Solve switch room puzzle.

# References

## http://www.skorks.com/2010/06/when-a-mount-fuji-question-is-not-really-a-mount-fuji-question-are-you-as-smart-as-you-think-you-are/

# Results

# Background

## State each prisoner can store if needed

### number of previous visits
How many times have I gone to the switch room?
odd/even

### each visit
switch value when I entered? on/off -> true/false
switch value when I left? on/off -> true/false

## Behavior
given my state and the switch state, should I turn switch on, or off, or toggle it?

## Approach
start from base case and build. e.g. increase number of prisoners from 1 to 2 to 3...
Could try different algorithms.

## see unit tests

## Appendix- puzzle statement
You are one of several recently arrested prisoners.
The warden, a deranged computer scientist, makes the following announcement:

You may meet together today and plan a strategy, but after today you will be in isolated cells and have no communication with one another.

I have setup a "switch room" which contains a light switch, which is either on or off.
The switch is not connected to anything.

Every now and then, I will select one prisoner at random to enter the "switch room".
This prisoner may throw the switch (from on to off, or vice-versa), or may leave the switch unchanged.
Nobody else will ever enter this room.

Each prisoner will visit the "switch room" arbitrarily often.
More precisely, for any N, eventually each of you will visit the "switch room" at least N times.

At any time, any of you may declare: "we have all visited the 'switch room' at least once".
If the claim is correct, I will set you free. If the claim is incorrect, I will feed all of you to the crocodiles. Choose wisely!

### Devise a winning strategy when you know that the initial state of the switch is off.

### Devise a winning strategy when you do not know whether the initial state of the switch is on or off.


