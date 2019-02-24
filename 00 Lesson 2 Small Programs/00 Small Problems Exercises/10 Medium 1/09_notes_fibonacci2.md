# Small Problems Exercises. Medium 1.

## 8.- Word to Digit 

## Problem Enunciate

In the previous exercise, we developed a recursive solution to calculating the nth Fibonacci number. In a language that is not optimized for recursion, some (not all) recursive methods can be extremely slow and require massive quantities of memory and/or stack space.

Ruby does a reasonably good job of handling recursion, but it isn't designed for heavy recursion; as a result, the Fibonacci solution is only useful up to about fibonacci(40). With higher values of nth, the recursive solution is impractical. (Our tail recursive solution did much better, but even that failed at around fibonacci(8200).)

Fortunately, every recursive method can be rewritten as a non-recursive (procedural) method.

Rewrite your recursive `fibonacci` method so that it computes its results without recursion.


## Understanding the Problem:

input: An integer n
output: An integer that is the nth Fibonacci number


## Examples / test cases:

```ruby
fibonacci(20) # == 6765
fibonacci(100) # == 354224848179261915075
fibonacci(100_001) # => 4202692702.....8285979669707537501
```

## Data. Data Structure

Create an initial array with the first two Fibonacci numbers (1 and 1)
Create an enumerator from 2 to num with an index, and append (<<) to the array, the sum of the array element with the index -2 and then the element with the index -1 (initially will be 1 and 1, then 1 and 2, then 2 and 3 and so on)
Return the last element of the array, that will have the index (nth Fibonacci Number) - 1



## Algorithm:

in the 09_fibonacci2.rb file

## Abstraction: