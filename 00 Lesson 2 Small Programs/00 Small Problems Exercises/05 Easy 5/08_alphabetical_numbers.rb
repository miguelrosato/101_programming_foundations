# Small Problems Exercises. Easy 5.
# 8.- Alphabetical numbers

# Write a method that takes an Array of Integers between 0 and 19, and returns 
# an Array of those Integers sorted based on the English words for each number

NUMBER_WORDS = %w(zero one two three four
  five six seven eight nine
  ten eleven twelve thirteen fourteen
  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number] }
end

p alphabetic_number_sort((0..19).to_a)