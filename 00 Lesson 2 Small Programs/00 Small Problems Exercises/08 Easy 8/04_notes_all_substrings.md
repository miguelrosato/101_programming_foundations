# Small Problems Exercises. Easy 8.

## 4.- All Substrings

## Problem Enunciate
Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

You may (and should) use the substrings_at_start method you wrote in the previous exercise:



## Understanding the Problem:

input: a string 
output: An array on which each elements represent the sum of each string character starting with the first, then the first + the second, then the first + the second + the third, and so on. In this case we need to keep iterating on each element of the string, in order to obtain all possible combinations of strings. 


## Examples / test cases:

```ruby
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
```

## Data. Data Structure

We could use the method substrings_at_start from the previous exercise, this time iterating at each element of the string, in order to generate the complete list of combinations.
 
## Algorithm:

in the 03_leading_substring.rb file

## Abstraction: