# Small Problems Exercises. Easy 7.

## 1.- Combine Two Lists

## Problem Enunciate
Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same number of elements.


## Understanding the Problem:

input: two arrays
output: an array composed by the two initial arrays, with the elements taken in alternation 


## Examples / test cases:

```ruby
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
```

## Data. Data Structure

create a new empty array

create a loop that iterates over each array

append the first value of the first array

append the first value of the second array

continue with the loop until the array lenght (-1) is reached.

## Algorithm:

in the 01_combine_list.rb file

## Abstraction: