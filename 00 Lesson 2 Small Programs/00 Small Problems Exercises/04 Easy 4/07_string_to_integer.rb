# Small Problems Exercises. Easy 4.
# 7.- String to Integer


# Write a method that takes a String of digits, and returns the appropriate
# number as an integer. You may not use any of the methods mentioned above.

DIGITS = {
  "0" => 0,
  "1" => 1,
  "2" => 2,
  "3" => 3,
  "4" => 4,
  "5" => 5,
  "6" => 6,
  "7" => 7,
  "8" => 8,
  "9" => 9
}

def string_to_integer(str)
  digits = str.chars.map { |char| DIGITS[char]}

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end 

p string_to_integer('4321') # == 4321
p string_to_integer('570') # == 570

# As usual, this isn't the shortest or even the easiest solution to this
# problem, but it's straightforward. The big takeaway from this solution
# is our use of the DIGITS hash to convert string digits to their numeric
# values. This technique of using hashes to perform conversions is a common
# idiom that you can use in a wide variety of situations, often resulting
# in code that is easier to read, understand, and maintain.

# Further exploration. Method that convert Hexadecimal to integer

HEX_HASH = {    '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
  'A' => 10,
  'B' => 11,
  'C' => 12,
  'D' => 13,
  'E' => 14,
  'F' => 15
}

def hexadecimal_to_integer(string)
integer = 0
temp = string.split('').reverse
temp.each_with_index do |char, index|
integer += HEX_HASH[char.upcase] * (16 ** index)
end
integer
end

p hexadecimal_to_integer('4D9f') # == 19871