# Small Problems Exercises. Medium 1.

## 2.- Rotation. Part 2

## Problem Enunciate

Write a method that can rotate the last n digits of a number.

Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.

## Understanding the Problem:

input: Two integers. One with the main number, and another one that represents the number of last digits to be rotated, using the rotate method. 
output: A new array with the first element of the initial array at the end.


## Examples / test cases:

```ruby
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917
```

## Data. Data Structure

convert the integer to a string, then separate the string using the index given in the method. Then apply the rotate method to the separate string. 
Finally add the two strings together again and convert back to integer. 
 
## Algorithm:

in the 02_rotation2.rb file

## Abstraction: