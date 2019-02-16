# Small Problems Exercises. Easy 8.

## 5.- Palindromic Substrings

## Problem Enunciate
Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

You may (and should) use the substrings method you wrote in the previous exercise.

For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.



## Understanding the Problem:

input: a strings of a single or several words and characters. 
output: An array on which each elements represent the sum of each string character starting with the first, then the first + the second, then the first + the second + the third, and so on. In this case we need to keep iterating on each element of the string, in order to obtain all possible combinations of strings. Finally, the resulting array will contain only those elements that are palindromes. It is important to consider that case must be respected, and that single characters are not palindromes. 


## Examples / test cases:

```ruby
palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
```

## Data. Data Structure

We could use the method substrings_at_start and substrings from the previous exercise, to form all the possible combinations of characters. Then discard all trhe single character entries, and finally make a comparison between the initial and final character element of each string, and if there is a perfect match, append this value to a resulting array. This final array will be returned as a resultant from the method.
 
## Algorithm:

in the 05_palindromic_substrings.rb file

## Abstraction: