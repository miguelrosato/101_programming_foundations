# Small Problems Exercises. Easy 8.

## 6.- Fizzbuzz

## Problem Enunciate
Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

## Understanding the Problem:

input: two integers. 
output: A string composed by all the numbers from the initial argument to the last argument. In case the argument is divisible by 3, substitute the argument with the word fizz, if it is divisible by 5, it must be replaced with the word buzz, and finally if it is divisible by 3 and 5, it has to be substituted by the word fizzbuzz. 


## Examples / test cases:

```ruby
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
```

## Data. Data Structure

use an if statement to confirm if the modulo of the current integer, divded by 3, 5, and 3 and 5 is zero. If so, substitute by fizz, buzz and fizzbuzz and print accordingly.
 
## Algorithm:

in the 06_fizzbuzz.rb file

## Abstraction: