# Small Problems Exercises. Easy 6.

## 3.- Fibonacci Numbers by Length 

## Problem Enunciate

The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, and each subsequent number is the sum of the two previous numbers. This series appears throughout the natural world.

Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate. For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially considering that it takes 6 iterations before it generates the first 2 digit number.

Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)


## Understanding the Problem:

Input: a number that represents the length of a fibonacci number as per the number of digits present in the number
Output: a number that represents the index (starting from 1) that represents the position where the number is present

## Examples / test cases:

find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847


## Data. Data Structure
Take the number
start calculating fbonacci numbers and compare if the number of digits (length of the number) is the same as the number taken
If it is not the same, add 1 to a counter (the index that starts at 1) and repeat the process with the next fibonacci number
Once the number of digits of the current fibonacci number matches the initial number taken, then the loop stops and the method shall return the value of the index. 

## Algorithm:

In 03_fibonacci_by_length.rb

## Abstraction:
