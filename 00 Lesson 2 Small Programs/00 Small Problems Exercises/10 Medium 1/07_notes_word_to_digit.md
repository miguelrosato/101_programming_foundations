# Small Problems Exercises. Medium 1.

## 7.- Word to Digit 

## Problem Enunciate

Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.


## Understanding the Problem:

input: A string
output: A string with any number written as word, converted into a number (digit)


## Examples / test cases:

```ruby
word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
```

## Data. Data Structure

Create a Hash with the key as the word and the value as the digit
create an array to store the digits
iterate over the hash, using the #gsub! method with a REGEX to convert any key (word) to a value digit
finally use string chars method to build the number array
join the array with the required format into a string
Use string interpolation to create a final string, using the appropriate number formatting


## Algorithm:

in the 07_word_to_digit.rb file

## Abstraction: