# 101 Programming Foundations. Exercises. Easy 2.
# 3.- Bill Calculator

# Create a simple tip calculator. The program should prompt for a bill amount 
# and a tip rate. The program must compute the tip and then display both the 
# tip and the total amount of the bill.

puts "Please Introduce the bill amount:"
bill_amount = gets.chomp.to_f

puts "Please introduce the tip percentage (%):"
tip_percentage = gets.chomp.to_f

tip_amount = (bill_amount * (tip_percentage / 100)).round(2)

bill_total = (bill_amount + tip_amount).round(2)

puts "The tip is $#{format('%.2f', tip_amount)}"
puts "The Bill Total is $#{format('%.2f', bill_total)}"
