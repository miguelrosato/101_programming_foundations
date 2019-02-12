# Small Problems Exercises. Easy 7.

## 3.- Capitalize Words

## Problem Enunciate
Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.

You may assume that words are any sequence of non-blank characters.


## Understanding the Problem:

input: a String
output: a new string with all the words capitalized.

Can use REGEX, or gsub method.


## Examples / test cases:

```ruby
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
```

## Data. Data Structure

Take the initial string and split it using the spaces as reference

The result will be an array of words. Iterate over each element of the array, verifying if each word start with a lower case letter

If the character is a lowercase letter, substitute the character with the Caps version of it. In order to do this, we can use different methods, like capitalize, string with index str[0], and the string.sub method. 

## Algorithm:

in the 03_capitalize_words.rb file

## Abstraction: