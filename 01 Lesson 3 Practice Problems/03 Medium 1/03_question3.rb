# Lesson 3: Practice Problems
# Medium 1
# Question 3


# Alan wrote the following method, which was intended to show all of the factors of the input number:

def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

def factors2(number)
  factors = []
  number.downto(1) do |div|
    factors << number / div if number % div == 0
  end
  factors
end

p factors(10)
p factors2(10)
# Alyssa noticed that this will fail if the input is 0, or a negative number,
# and asked Alan to change the loop. How can you make this work without using
# begin/end/until? Note that we're not looking to find the factors for 0 or
# negative numbers, but we just want to handle it gracefully instead of
# raising an exception or going into an infinite loop.

# One option is using the .downto method, that doesn't require the divisor
# variable declaration, neither the divisor counter

# Bonus 1

# What is the purpose of the number % divisor == 0 ?

# To confirm that the modulo of the argument divided by the number being
# evaluated is zero which would effectively confirm that the divisor is a factor.

# Bonus 2

# What is the purpose of the second-to-last line (line 8) in the method
# (the factors before the method's end)?

# To return the resultant array from the factor method.