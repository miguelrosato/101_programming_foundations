# Small Problems Exercises. Easy 7.

## 9.- Multiply all pairs

## Problem Enunciate
Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.

You may assume that neither argument is an empty Array.

## Understanding the Problem:

input: Two arrays of n and m elements
output: An array on which element is the result of the multiplication of each of the elements of the initial array by all the elements of the second array. The result then need to be sorted in ascending order. 


## Examples / test cases:

```ruby
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
```

## Data. Data Structure

This require to iterate with each element of the initial arry, iterating again over the second array to multiply against each element of the second array.

Then use the sort method to organise the resulting values in ascending order within the final array

The most efficient solution is using the product (array) and map methods (one line solution), however each method used twice is straight forward (traditional programming).  
 

## Algorithm:

in the 09_multiply_all_pairs.rb file

## Abstraction: