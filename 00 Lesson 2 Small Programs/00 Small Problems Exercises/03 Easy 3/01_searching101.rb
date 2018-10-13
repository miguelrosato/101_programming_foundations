# Small Problems Exercises. Easy 3.
# 1.- Searching 101

# Write a program that solicits 6 numbers from the user,
# then prints a message that describes whether or not
# the 6th number appears amongst the first 5 numbers.

my_array = []

puts "Please enter the 1st number"
my_array << gets.chomp.to_i

puts "Please enter the 2nd number"
my_array << gets.chomp.to_i

puts "Please enter the 3rd number"
my_array << gets.chomp.to_i

puts "Please enter the 4th number"
my_array << gets.chomp.to_i

puts "Please enter the 5th number"
my_array << gets.chomp.to_i

puts "Please enter the 6th number"
my_var = gets.chomp.to_i


if my_array.include?(my_var)
  puts "The 6th number #{my_var} is included in the array #{my_array}"
else
  puts "The 6th number #{my_var} is NOT included in the array #{my_array}"
end