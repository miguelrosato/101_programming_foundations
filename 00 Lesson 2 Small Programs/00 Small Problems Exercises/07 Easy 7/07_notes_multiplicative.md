# Small Problems Exercises. Easy 7.

## 7.- Multiplicative Average

## Problem Enunciate
Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty.


## Understanding the Problem:

input: an Array of n elements
output: A float number rounded to three decimal places 


## Examples / test cases:

```ruby
show_multiplicative_average([3, 5])
The result is 7.500

show_multiplicative_average([6])
The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
The result is 28361.667
```

## Data. Data Structure

Create an empty "enumerator" variable. Iterate over the array, multiplying the enumerator variable per each number of the array and updating the variable each time.

NOTE: Insted of iterating with an enumerator, we can directly use the .inject method with the arry using the multiplication symbol. 

create a variable called "divisor" and make it equal to the array lenght or size. 

divide the enumerator by the divisor, convert it to float and round it to three decimal places

present the output as a string with the result using puts
 

## Algorithm:

in the 07_multiplicative_average.rb file

## Abstraction: