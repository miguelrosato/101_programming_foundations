# Small Problems Exercises. Medium 1.

## 5.- Diamonds 

## Problem Enunciate

Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.


## Understanding the Problem:

input: An odd integer
output: a series of strings composed by spaces and stars, which make a 4 points diamond configuration


## Examples / test cases:

```ruby
diamond(1)

*

diamond(3)

 *
***
 *

diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *

```

## Data. Data Structure

Use the number value to iterate, creating each time a string composed of spaces up to number / 2 - 1, then adding the first star *. then the second iteration will reduce the space by one and add two stars, and so on.

## Algorithm:

in the 05_diamonds.rb file

## Abstraction: