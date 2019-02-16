# Small Problems Exercises. Easy 8.

## 1.- Sum of Sums

## Problem Enunciate
Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.


## Understanding the Problem:

input: An array of at least one number
output: An integer wich is the result of the recursive sum of all its elements starting by the first, then the first + the second, then the first + the second + the third, and so on.


## Examples / test cases:

```ruby
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35
```

## Data. Data Structure

We could create a variable (integer) that will save the result of each sum, then we create a counter with the value of the array size. We can then decompose the problem as each value of the array, being multiplied by the array size, then the array size -1. since each value is repeated by the array size depending on the position in the array. 

For example,
```ruby 

[3, 5, 2] => (3) + (3 + 5) + (3 + 5 + 2) = 3 * (arr.size) + 5 * (arr.size - 1) + 2 * (arr.size -2)

```  
Another method is to create an array of arrays, with the size of each array increasing with the index. the final array of arrays can then be integrated into a single array with the .flatten method, and finally we can obtrain the sum of the array elements, using the .sum method
 
## Algorithm:

in the 01_sum_of_sums.rb file

## Abstraction: