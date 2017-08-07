# Purpose
Solve switch room puzzle.

# References

## http://www.skorks.com/2010/06/when-a-mount-fuji-question-is-not-really-a-mount-fuji-question-are-you-as-smart-as-you-think-you-are/

## spoiler - shows solution
http://www.cut-the-knot.org/Probability/LightBulbs.shtml

# Results

# Background
## Background- Puzzle statement
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

## List ideas

### Approaches
Start solution from base case and build. e.g. increase number of prisoners from 1 to 2 to 3...
Could try different algorithms.
#### divide and conquer
prisoners in groups with different behaviors, could reduce number of groups over time?
#### no perfect solution??
It's possible there isn't a guaranteed solution, maybe best is very high probability of success, but less than 1.

### State each prisoner can store if needed
#### from initial meeting
##### total number of prisoners
##### my prisoner number
##### my switch algorithm (behavior)
given my state and the switch state, should I turn switch on, or off, or toggle it?

#### during the game
##### previous visits
How many times have I gone to the switch room?
odd/even

##### each visit
switch value when I entered? on/off -> true/false
switch value when I left? on/off -> true/false
number of times I saw the light change state

## Strategy when you know that the initial state of the switch is off.
prisoners number themselves 0...n-1
Every prisoner can implement a different behavior.
//e.g. for prisoner number i, on first i visits, toggle switch state.
//after that, don't toggle. could always set on.
//or inverse
//for first i visits, always set on, after that toggle.

on first visit, toggle switch. After that don't change switch.
if switch is not the way prisoner left it, a previously unvisited prisoner has visited.

How can any prisoner know all of the other prisoners have visited?
How can any prisoner know if one or more prisoners have not visited?
what if same prisoner is called twice in a row, other not called?

on first visit, turn off.??
on second visit, turn on.
on later visits do nothing.

could arbitrarily agree one or some "lead" prisoner, only they can declare.
Maybe only they can turn on??
lead could toggle, if they ever see light is same it means someone else changed it.

---
first visit
if light is off, no one has reached second visit??
don't change switch
record light upon entering?
record visit

lead prisoner
am i the one who turned the light on? if not, it was someone else's first visit.

second visit,
if light is off turn it on.
if light is on don't do anything.
record visit

third visit
if light is on don't do anything.

if first visit, toggle switch
store switchUponLeaving

---
first visit, toggle light
set isFirstVisit false
subsequent visit, don't change light
if light is on and numprisoners is even???



## Strategy when you do not know whether the initial state of the switch is on or off.

## see unit tests


