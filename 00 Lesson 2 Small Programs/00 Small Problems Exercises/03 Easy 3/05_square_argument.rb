# Small Problems Exercises. Easy 3.
# 5.- Squaring an argument. Method

# Using the multiply method from the "Multiplying Two Numbers" problem,
# write a method that computes the square of its argument (the square
# is the result of multiplying a number by itself).

def multiply(num1, num2)
  num1 * num2 # Don't use puts here, or the method returns nil
end

def square(n)
  multiply(n, n)
end

puts square(5)

puts square(18)

puts square(9)