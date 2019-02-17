# Small Problems Exercises. Easy 9.

## 6.- How Long Are You

## Problem Enunciate

Write a method that takes a string as an argument, and returns an Array that contains every word from the string, to which you have appended a space and the word length.

You may assume that words in the string are separated by exactly one space, and that any substring of non-space characters is a word.

## Understanding the Problem:

input: A string
output: An array of strings, on which, each new string word includes the initial string word size 


## Examples / test cases:

```ruby
word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []
```

## Data. Data Structure

Use the split method to separate each word into an intermediate array and then each word add the string size to the initial string word and then append to the result
 
## Algorithm:

in the 06_how_long.rb file

## Abstraction: