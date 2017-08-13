# Purpose
Solve switch room puzzle.

# References

## When A ‘Mount Fuji’ Question Is Not Really A ‘Mount Fuji’ Question
http://www.skorks.com/2010/06/when-a-mount-fuji-question-is-not-really-a-mount-fuji-question-are-you-as-smart-as-you-think-you-are/

## spoiler - shows solution
http://www.cut-the-knot.org/Probability/LightBulbs.shtml

# Results

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

## Devise a winning strategy when you know that the initial state of the switch is off.
As shown in earlier commits, I got close to the solution without "peeking" at an answer.  
I thought of a lead prisoner, several ways to store state, and several algorithms.  
But I didn't think of a winning algorithm.  

Then I peeked at answer http://www.cut-the-knot.org/Probability/LightBulbs.shtml
Then I revised README, code and added tests.

### initial meeting
Prisoners choose one of themselves to act as the leader.
Leader counts total number of prisoners.

#### regular prisoner (non-leader) behavior
When I enter room, if light is off turn it on.
When I enter room, if light is on leave it on.
switch on/off -> boolean true/false

##### lead prisoner behavior
When I enter room, if light is on,
    this means a "new" prisoner is signaling they entered the room
    Turn the light off.
    increment number of times I turned light off.
    If number of times I turned light off = total number of prisoners - 1, all prisoners have visited.

## TODO: Devise a winning strategy when you do not know whether the initial state of the switch is on or off.

## see unit tests


