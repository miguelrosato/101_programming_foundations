# Small Problems Exercises. Easy 5.
# 9.- Daily Doubles

# Write a method that takes a string argument and returns a new string that
# contains the value of the original string with all consecutive duplicate
# characters collapsed into a single character.

def crunch(str)
  new_array = []
  str.split(" ").each { |val| new_array << val.split("").uniq.join }.join(" ")
  new_array
end 



crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

