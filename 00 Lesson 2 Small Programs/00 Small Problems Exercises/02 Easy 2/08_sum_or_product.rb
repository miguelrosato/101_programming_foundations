# 101 Programming Foundations. Exercises. Easy 2.
# 8.- Sum or Product of Consecutive integers

# Write a program that asks the user to enter an integer 
# greater than 0, then asks if the user wants to determine 
# the sum or product of all numbers between 1 and the entered integer.

def sum(number)
  result = 0
  1.upto(number) { |i| result += i }
  result
end

def product(number)
  result = 1
  1.upto(number) { |i| result *= i }
  result
end

puts "Please introduce a integer greater than 0:"
my_number = gets.chomp.to_i

puts "Do you want the sum (s) or the product (p) of all the numbers?"
operation = gets.chomp

if operation == "s"
  my_sum = sum(my_number)
  puts "The sum of all the numbers up to #{my_number} is #{my_sum}"
elsif operation == "p"
  my_product = product(my_number)
  puts "The product of all the numbers up to #{my_number} is #{my_product}"
end
