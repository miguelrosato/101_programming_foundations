# Small Problems Exercises. Easy 3.
# 2.- Arithmetic Integer

# Write a program that prompts the user for two positive integers,
# and then prints the results of the following operations on those
# two numbers: addition, subtraction, product, quotient, remainder, 
# and power. Do not worry about validating the input.

def prompt(message)
  puts "=> #{message}"
end

prompt("Please enter the first number:")
number1 = gets.chomp.to_i

prompt("Please enter the second number:")
number2 = gets.chomp.to_i

number3 = number1 + number2
number4 = number1 - number2
number5 = number1 * number2
number6 = number1 / number2
number7 = number1 % number2
number8 = number1**number2

prompt("#{number1} + #{number2} = #{number3}")
prompt("#{number1} - #{number2} = #{number4}")
prompt("#{number1} * #{number2} = #{number5}")
prompt("#{number1} / #{number2} = #{number6}")
prompt("#{number1} % #{number2} = #{number7}")
prompt("#{number1} ^ #{number2} = #{number8}")

# Quicker, more efficient DRY way:

OPERATIONS = { :+ => "+", :- => "-", :* => "*", :/ => "/", :% => "%", :** => "**"}.freeze  

puts "==> Enter the 1st number:"
num1 = gets.chomp.to_i
puts "==> Enter the 2nd number:"
num2 = gets.chomp.to_i

OPERATIONS.each do |key, val|
  puts "==> #{num1} #{val} #{num2} = #{num1.send(key, num2)}"
end