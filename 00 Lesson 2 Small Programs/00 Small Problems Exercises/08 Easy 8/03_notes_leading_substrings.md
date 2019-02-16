# Small Problems Exercises. Easy 8.

## 3.- Leading Substrings

## Problem Enunciate
Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.


## Understanding the Problem:

input: a string 
output: An array on which each elements represent the sum of each string character starting with the first, then the first + the second, then the first + the second + the third, and so on.


## Examples / test cases:

```ruby
substrings_at_start('abc') == ['a', 'ab', 'abc']
substrings_at_start('a') == ['a']
substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
```

## Data. Data Structure

We could create an array of arrays, with the size of each array increasing with the index. the final array of arrays can then be integrated into a single array with the .flatten method.
 
## Algorithm:

in the 03_leading_substring.rb file

## Abstraction: