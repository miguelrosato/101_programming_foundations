# Small Problems Exercises. Easy 9.

## 10.- Grade Book

## Problem Enunciate

Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

## Understanding the Problem:

input: an array of arrays, on which, each element is an array with a fruit and the quantities required. 
output: An Array with the final fruit quantities.  


## Examples / test cases:

```ruby
buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
```

## Data. Data Structure

Iterate over each element of the array, then map the multiplication of each sub-array element multiplied by the second element and append the result to the result array. Finally, use flatten to make the array uniform
 
## Algorithm:

in the 10_grocery_list.rb file

## Abstraction: