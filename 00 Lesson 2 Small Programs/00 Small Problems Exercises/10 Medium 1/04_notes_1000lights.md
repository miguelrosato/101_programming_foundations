# Small Problems Exercises. Medium 1.

## 4.- 1000 lights 

## Problem Enunciate

You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.


## Understanding the Problem:

input: An integer (number of lights). 
output: An array that represents the index of the lights that are still on.


## Examples / test cases:

Example with n = 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

## Data. Data Structure

Create an array of true values, using the fill method
iterate over the array twice:
  The first iteration is from 1 to the initial n - 1 (to use the index)
    The second iteration is from the index of the first iteration to n-1 (again index). In the second iteration, we assign the current value of the boolean to the opposite value. if the value is true it will become false, then if it is false, it will become true.
    At the end we have an array of true and false values. We need to map in such a way that every true value is reassigned to the value of the index + 1 of the current position in the array. All other values become nil. 
    Finally, we can apply the array .compact method, or the select method, to eliminate the nil values and return the final array. 





## Algorithm:

in the 04_1000lights.rb file

## Abstraction: