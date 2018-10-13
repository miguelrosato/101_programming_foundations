# Small Problems Exercises. Easy 4.
# 9.- Integer to string

# Write a method that takes a positive integer or zero, and converts it to a 
# string representation.

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

p integer_to_string(4321) # == '4321'
p integer_to_string(0) # == '0'
p integer_to_string(5000) # == '5000'

# The core of the method simply walks through the number chopping off the last
# digit in each iteration by using number.divmod(10), which returns two values:
# the value of number divided by 10 using integer division, and the remainder of
# that division. The remainder in each case is the rightmost digit in the 
# remaining number, so we just prepend it to the current result value. Once
# number is whittled down to 0, we're done.

STRINGS = { 0 => "0", 1 => "1", 2 => "2", 3 => "3", 4 => "4",
  5 => "5", 6 => "6", 7 => "7", 8 => "8", 9 => "9"
}.freeze

def integer_to_string2(int)
  str = int.digits.reverse.map { |digit| STRINGS[digit] }
  p str
  str.join
end

p integer_to_string2(4321) # == '4321'
p integer_to_string2(0) # == '0'
p integer_to_string2(5000) # == '5000'