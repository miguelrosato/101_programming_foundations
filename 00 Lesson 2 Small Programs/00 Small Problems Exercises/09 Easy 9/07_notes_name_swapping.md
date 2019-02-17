# Small Problems Exercises. Easy 9.

## 7.- Name Swapping

## Problem Enunciate

Write a method that takes a first name, a space, and a last name passed as a single String argument, and returns a string that contains the last name, a comma, a space, and the first name.

## Understanding the Problem:

input: A string with a name and last name
output: a string with the last name and first name of the initial string, separated by a comma.  


## Examples / test cases:

```ruby
swap_name('Joe Roberts') == 'Roberts, Joe'
```

## Data. Data Structure

Use the split method to separate each word into an intermediate array, then reverse the elements of the array and join, giving a comma as argument separator. 
 
## Algorithm:

in the 07_name_swapping.rb file

## Abstraction: