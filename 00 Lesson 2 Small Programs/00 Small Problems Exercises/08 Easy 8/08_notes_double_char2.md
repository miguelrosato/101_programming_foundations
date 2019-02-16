# Small Problems Exercises. Easy 8.

## 8.- Double Char (Part 2)

## Problem Enunciate
Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

## Understanding the Problem:

input: a string
output: A string with each consonant letters only are duplicated.


## Examples / test cases:

```ruby
double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""
```

## Data. Data Structure

Create a result array
Use the string chars or split("") method to separate the string into an array of each element of the string.
Then iterate over the array, using REGEX (two expressions) to confirm if the letters are consonant regardless of case (vowels, digits or special characters are not allowed).

An alternative solution, is to use the result variable as a string and not as an array, and then use the each_char method
 
## Algorithm:

in the 08_double_char2.rb file

## Abstraction: