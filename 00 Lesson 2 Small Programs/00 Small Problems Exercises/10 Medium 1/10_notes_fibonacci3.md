# Small Problems Exercises. Medium 1.

## 8.- Word to Digit 

## Problem Enunciate

In the previous exercise, we developed a procedural method for computing the value of the nth Fibonacci numbers. This method was really fast, computing the 20899 digit 100,001st Fibonacci sequence almost instantly.

In this exercise, you are going to compute a method that returns the last digit of the nth Fibonacci number.


## Understanding the Problem:

input: An integer n
output: An integer that is the last digit of the nth Fibonacci number


## Examples / test cases:

```ruby
fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
fibonacci_last(123456789) # -> 4
```

## Data. Data Structure

Use the previous Fibonacci method to create a fibonacci_last method that invokes our fibonacci method, and then we use value to string [-1] to integer to extract the last value. This work with relatively little fibonacci numbers

For large numbers we need to use a mathematical correlation that tell us that the last mumbers in a Fibonacci, respects a sequence of 60 numbers. That way, we just need the modulo of our current Fibonacci number, in order to understand where in the sequence it falls.


## Algorithm:

in the 10_fibonacci3.rb file

## Abstraction: