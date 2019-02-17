# Small Problems Exercises. Easy 9.

## 9.- Grade Book

## Problem Enunciate

Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.

Numerical Score Letter	Grade
90 <= score <= 100	'A'
80 <= score < 90	'B'
70 <= score < 80	'C'
60 <= score < 70	'D'
0 <= score < 60	'F'
Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.

## Understanding the Problem:

input: Three scores between 0 and 100 (integers)
output: A string with the grade value obtained from the mean of the three scores (integers from the input) 


## Examples / test cases:

```ruby
get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"
```

## Data. Data Structure

Calculate the mean value, and use a case statement to assign the value.  
 
## Algorithm:

in the 09_grade_book.rb file

## Abstraction: