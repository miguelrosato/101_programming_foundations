# Small Problems Exercises. Medium 1.

## 3.- Rotation. Part 3

## Problem Enunciate

If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

Note that you do not have to handle multiple 0s.

## Understanding the Problem:

input: An integer. 
output: An integer that represents the maximum rotation of the initial integer.


## Examples / test cases:

```ruby
max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845
```

## Data. Data Structure

Create an iterator from the number of digits of the number (converting first to string, then determining the size), counting down to 2 (for the last two digits). we then apply the `rotate_rightmost_digits` from the previous exercise, using the initial number value and saving it on its own, and then using the current index. 
 
## Algorithm:

in the 03_rotation3.rb file

## Abstraction: