# Small Problems Exercises. Easy 9.

## 8.- Sequence Count

## Problem Enunciate

Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a sequence that your method will create. The method should return an Array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number.

You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. If the count is 0, an empty list should be returned.

## Understanding the Problem:

input: Two integers. The first one is the counter that will define the length of the final array. The second number will the multiplier of the resulting elements of the final array
output: an array, on which each element is multiple of the second input number. 
Note: if the counter is zero? the returned result is an empty array 


## Examples / test cases:

```ruby
sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []
```

## Data. Data Structure

Use an iterator from 1 to the value of the counter, then use map method, multiplying each index by the multiplier number. 
 
## Algorithm:

in the 08_sequence_count.rb file

## Abstraction: