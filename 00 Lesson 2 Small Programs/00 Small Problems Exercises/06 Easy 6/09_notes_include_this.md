# Small Problems Exercises. Easy 6.

## 9.- Find the Duplicate

## Problem Enunciate

Write a method named include? that takes an Array and a search value as arguments. This method should return true if the search value is in the array, false if it is not. You may not use the Array#include? method in your solution.


## Understanding the Problem:

Input: an array and an integer or string
Output: a value (integer or string), which is contained in the array with the same value as the integer of the input 

## Examples / test cases:
``` ruby
include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false
```

## Data. Data Structure
take each element of the array and compare to the variable value. return True or false 


## Algorithm:

In 09_include_this.rb

## Abstraction: