# Small Problems Exercises. Easy 7.

## 4.- Swap Case

## Problem Enunciate
Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

You may not use String#swapcase; write your own version of this method.


## Understanding the Problem:

input: a String
output: a new string with all the words case inverted.

Can use REGEX, or gsub method. Cannot use .swapcase


## Examples / test cases:

```ruby
swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
```

## Data. Data Structure

Take the initial string and split it (can also use the chars method)

The result will be an array of each character of the string. Iterate over the array, using an if statement to determing if the current character is uppercase, downcase or neither. reassign the opposite value (or neithyer) accordingly. 
 

## Algorithm:

in the 04_swap_case.rb file

## Abstraction: