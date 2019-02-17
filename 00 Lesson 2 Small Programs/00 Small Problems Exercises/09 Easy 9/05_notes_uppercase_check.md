# Small Problems Exercises. Easy 9.

## 5.- Uppercase Check

## Problem Enunciate

Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the string are uppercase, false otherwise. Characters that are not alphabetic should be ignored.

## Understanding the Problem:

input: A string
output: Boolean. True if all the letters contained in the string are uppercase, false otherwise


## Examples / test cases:

```ruby
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true
```

## Data. Data Structure

Use REGEX to confirm if the string does not contains [a-z] elements.
 
## Algorithm:

in the 05_uppercase check.rb file

## Abstraction: