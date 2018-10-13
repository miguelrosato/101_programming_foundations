# Small Problems Exercises. Easy 4.
# 8.- String to signed Integer



# Write a method that takes a String of digits, and returns the appropriate 
# number as an integer. The String may have a leading + or - sign; if the 
# first character is a +, your method should return a positive number; if it 
# is a -, your method should return a negative number. If no sign is given, 
# you should return a positive number.

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

def string_to_signed_integer(str)
  case str[0]
  when "-" then -string_to_integer(str[1..-1])
  when "+" then string_to_integer(str[1..-1])
  else          string_to_integer(str)
  end
end

p string_to_signed_integer('4321') # == 4321
p string_to_signed_integer('-570') # == -570
p string_to_signed_integer('+100') # == 100