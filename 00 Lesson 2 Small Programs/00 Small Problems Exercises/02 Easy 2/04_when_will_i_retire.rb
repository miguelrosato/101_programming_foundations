# 101 Programming Foundations. Exercises. Easy 2.
# 4.- When Will I Retire

# Build a program that displays when the user will
# retire and how many years she has to work till retirement.

puts "What's your current age?"
my_age = gets.chomp.to_i

puts "What's your estimated retirement age?"
retirement = gets.chomp.to_i

years_to_retirement = retirement - my_age

current_year = Time.now.year

retirement_year = current_year + years_to_retirement


puts "It's #{current_year}. You still have to work for another #{years_to_retirement} years!!!"
puts "Your estimated year of retirement is #{retirement_year}!!!"

