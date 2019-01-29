# Small Problems Exercises. Easy 6.

## 4.- Reversed Arrays

## Problem Enunciate

Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.


## Understanding the Problem:

Input: an array
Output: The same array object with the values of the initial array reversed (without using array .reverse method)

## Examples / test cases:
``` ruby
list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"]
list == ["c", "d", "e", "b", "a"]

list = ['abc']
reverse!(list) == ["abc"]
list == ["abc"]

list = []
reverse!(list) == []
list == []
```

## Data. Data Structure

Take the first element of the array, and at the same time take the last value of the array

make the first value of the array equal to the last, and at the same time, make the last value of the array equyal to the first.


## Algorithm:

In 04_reversed_arrays.rb

## Abstraction:
