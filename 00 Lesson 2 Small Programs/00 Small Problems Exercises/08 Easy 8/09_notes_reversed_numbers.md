# Small Problems Exercises. Easy 8.

## 9.- Reversed Numbers

## Problem Enunciate
Write a method that takes a positive integer as an argument and returns that number with its digits reversed. 

## Understanding the Problem:

input: an integer
output: An integer with the numbers inverted. If there are zeroes at the end of the initial number, these disappear when inverted. 


## Examples / test cases:

```ruby
reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1
```

## Data. Data Structure

convert the integer into a string. Use the reverse method to invert the position of the characters. convert back to integer. 

Another way to solve this problem is using the digits method, which takes the digits from an integer from right to left and put them in an array. For example:
```ruby
7654321.digits => [1, 2, 3, 4, 5, 6, 7] 
```
Then we can just use the join method to extract the number. 
 
## Algorithm:

in the 09_reversed_numbers.rb file

## Abstraction: