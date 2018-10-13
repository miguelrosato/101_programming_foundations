# Small Problems Exercises. Easy 3.
# 3.- Counting the number of characters

# Write a program that will ask a user for an input of 
# a word or multiple words and give back the number of 
# characters. Spaces should not be counted as a character.

puts "Please write a word or multiple words:"
my_string = gets.chomp
my_number_of_letters = my_string.split(" ").join.length

puts "There are #{my_number_of_letters} characters in: \"#{my_string}\"."

