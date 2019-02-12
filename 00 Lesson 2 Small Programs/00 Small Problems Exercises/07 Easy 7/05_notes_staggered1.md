# Small Problems Exercises. Easy 7.

## 5.- Staggered Caps (Part 1)

## Problem Enunciate
Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.


## Understanding the Problem:

input: a String
output: a new string with all the even character index upcased and the odd character index downcased. All other characters remain unaffected. 

Can use REGEX, string with index, even? odd? method


## Examples / test cases:

```ruby
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
```

## Data. Data Structure

Take the initial string and split it. 

The result will be an array of characters. Iterate over each element of the array, upcasing the even index and downcasing the odd index. Do nothing with the other characters.  
 

## Algorithm:

in the 05_staggered_caps1.rb file

## Abstraction: