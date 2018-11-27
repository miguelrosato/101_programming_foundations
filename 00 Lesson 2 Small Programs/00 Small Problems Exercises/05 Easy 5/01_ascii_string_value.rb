# Small Problems Exercises. Easy 5.
# 1.- ASCII String Value

# Write a method that determines and returns the ASCII string
# value of a string that is passed in as an argument.


def ascii_value(str)
  sum = 0
  # str.split("").each { |val| sum += val.ord }  My ans. Better method each_char
  str.each_char { |char| sum += char.ord }
  sum
end

p ascii_value('Four score') #== 984
p ascii_value('Launch School') #== 1251
p ascii_value('a') #== 97
p ascii_value('') #== 0



# Other solutions:

# def ascii_value(string)
#  string.split('').map(&:ord).sum
# end



