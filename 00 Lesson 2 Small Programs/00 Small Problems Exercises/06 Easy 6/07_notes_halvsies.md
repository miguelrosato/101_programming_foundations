# Small Problems Exercises. Easy 6.

## 7.- Halvsies

## Problem Enunciate

Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.


## Understanding the Problem:

Input: an array
Output: A new array of two arrays. the first element of the new array is the first half of the arry (including the half value if the initial array is odd), and the second element is the rest of the array. 

## Examples / test cases:
``` ruby
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]
```

## Data. Data Structure
take the first array
count the index value of the array
take the index, divide by two and round to the higher value
create an array with the new index value, adding the initial values of the initial array
create another array with the result of subtracting the initial index, minus the half index and adding the remaining values



## Algorithm:

In 07_halvsies.rb

## Abstraction: