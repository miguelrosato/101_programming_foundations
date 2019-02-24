# Small Problems Exercises. Medium 1.

## 1.- Rotation

## Problem Enunciate

Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.

## Understanding the Problem:

input: an array 
output: A new array with the first element of the initial array at the end.


## Examples / test cases:

```ruby
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true
```

## Data. Data Structure

Iterate over each element of the array, then map the multiplication of each sub-array element multiplied by the second element and append the result to the result array. Finally, use flatten to make the array uniform
 
## Algorithm:

in the 01_rotation1.rb file

## Abstraction: