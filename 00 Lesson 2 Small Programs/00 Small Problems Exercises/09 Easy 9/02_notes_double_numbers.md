# Small Problems Exercises. Easy 9.

## 2.- Double Doubles

## Problem Enunciate
A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.

## Understanding the Problem:

input: An integer
output: An integer that is the same as the initial number if the number is a double, or the double of the integer if the number is not double.


## Examples / test cases:

```ruby
twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10
```

## Data. Data Structure

create an array of each digit of the number. if the array length is odd, then join, convert to integer again and return the number multiplied by two. 

if the array length is even, then create two new arrays with each half of the initial array, then join the values, to integer and then compare both new integers. if they are equal, return the value of (number 1), if they are not equal, return the double of the initial integer of the method. 
 
## Algorithm:

in the 02_double_numbers.rb file

## Abstraction: