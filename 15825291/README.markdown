# Control Center Dynamic Bounce (duplicate of 15825204)

## Summary:
Control center used to have a dynamic bounce animation based on velocity. It now has a static bounce animation, where no matter at what position or velocity you release the control center show gesture it will produce the same animation. This is inconsistent with the rest of the animations in iOS 7 and inconsistent with real world physics.

## Steps to Reproduce:
1. Go to the home screen.
2. Slide from the bottom of the screen to bring up control center. 
3. Release midway with no velocity.
4. Repeat steps 1 - 2.
5. Release with a fast velocity.
6. Observe bounce animations.

## Expected Results:
The bounce animation should adjust based on the velocity when the touches end. 

## Actual Results:
The bounce animation has static values and does not changed based on velocity. 

## Version:
iOS 7.1 11D5127c

## Notes:


## Configuration:
iPhone 5S, iOS simulator.
