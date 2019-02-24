def fibonacci(num)
  fib_arr = [1, 1]

  (2..num).each do |idx|
    fib_arr << (fib_arr[idx - 2] + fib_arr[idx - 1])
  end
  fib_arr[num - 1]
end

def fibonacci_last(num)
  fibonacci(num).to_s[-1].to_i
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number) This number is too long for the method
# fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number) This number is too long for the method
# fibonacci_last(123456789) # -> 4 This number is too long for the method

# For Very large numbers we can apply the following method:

# this program take advantage of the fact that the last digits in fibonacci series has a period of 60
# the number after mod 60 range from 0 to 59. we have it covered when number goes from 1 to 59.
# and we need to do a special treatment when number is 0. to find out what value is the last digit when n = 0
# since the last digits of fibonacci number when n = 61 and n = 62 are both 1. then we conclude that the last digit must be 0 when n = 60

def fibonacci_last2(num)
  num %= 60
  return 0 if num == 0
  last = 1
  pen_ultimate = 1
  3.upto(num) do
    last, pen_ultimate = (pen_ultimate + last) % 10, last
  end
  last
end

puts " "

p fibonacci_last2(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last2(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last2(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last2(100_001)   # -> 1 (this is a 20899 digit number) 
p fibonacci_last2(1_000_007) # -> 3 (this is a 208989 digit number) 
p fibonacci_last2(123456789) # -> 4

# Now, using an array with the sequence of last fibonacci numbers (That repoeats every 60 numbers)

FIB_LAST_DIGITS = [
  0, 1, 1, 2, 3, 5, 8, 3, 1, 4, 5, 9, 4, 3, 7, 0, 7,
  7, 4, 1, 5, 6, 1, 7, 8, 5, 3, 8, 1, 9, 0, 9, 9, 8,
  7, 5, 2, 7, 9, 6, 5, 1, 6, 7, 3, 0, 3, 3, 6, 9, 5,
  4, 9, 3, 2, 5, 7, 2, 9, 1
  ]

def fibonacci_last3(num)
  FIB_LAST_DIGITS[num % 60]
end

puts " "

p fibonacci_last3(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last3(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last3(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last3(100_001)   # -> 1 (this is a 20899 digit number) 
p fibonacci_last3(1_000_007) # -> 3 (this is a 208989 digit number) 
p fibonacci_last3(123456789) # -> 4