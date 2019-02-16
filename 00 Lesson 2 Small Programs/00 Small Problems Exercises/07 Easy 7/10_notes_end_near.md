# Small Problems Exercises. Easy 7.

## 10.- The End Is Near But Not Here

## Problem Enunciate
Write a method that returns the next to last word in the String passed to it as an argument.

Words are any sequence of non-blank characters.

You may assume that the input String will always contain at least two words.

## Understanding the Problem:

input: a string of at least two words
output: a string which value is the penultimate word of the initial string


## Examples / test cases:

```ruby
penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'
```

## Data. Data Structure

We could use the split method with the space as reference, in order to obtain an array. From that array we just need to puts the penultimate element of the array using the negative index array[-2]  
 

## Algorithm:

in the 10_end_near.rb file

## Abstraction: