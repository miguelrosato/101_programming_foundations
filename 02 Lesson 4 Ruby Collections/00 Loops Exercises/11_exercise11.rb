# Write a loop that prints numbers 1-5 and whether the number is even or odd. Use the code below to get started.

#count = 1

#loop do
#  count += 1
# end


count = 1

loop do
  if count.odd?
    puts "#{count} is odd!"
  elsif count.even?
    puts "#{count} is even!"
  end
  count += 1
  break if count > 5
end

# Another solution
puts " "

counter = 1

loop do 
  counter.odd? ? puts("#{counter} is odd!") : puts("#{counter} is even!")
  break if counter == 5

  counter += 1
end
