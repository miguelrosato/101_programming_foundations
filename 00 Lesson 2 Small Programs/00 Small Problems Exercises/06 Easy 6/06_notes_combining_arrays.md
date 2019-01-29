# Small Problems Exercises. Easy 6.

## 6.- Combining arrays

## Problem Enunciate

Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.


## Understanding the Problem:

Input: two arrays
Output: A new array with the values of the initial two arrays, removing any repeated values.

## Examples / test cases:
``` ruby
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
```

## Data. Data Structure
take the first array
append the second array
apply the flatten method to reduce the array of arrays
apply the uniq! method the final array to remove any repeated values


## Algorithm:

In 06_combining_arrays.rb

## Abstraction:
