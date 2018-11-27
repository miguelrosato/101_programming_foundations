# Small Problems Exercises. Easy 5.
# 7.- Letter Counter. Part 2

# Write a method that takes a string with one or more space separated words and
#  returns a hash that shows the number of words of different sizes, excluding non letters.


def word_sizes(str)
  words_sizes = Hash.new(0)
  str.split.each do |word|
    clean_word = word.delete("^A-Za-z")
    words_sizes[clean_word.size] += 1
  end
  words_sizes.sort_by { |val, key| val }.to_h
end


p word_sizes('Four score and seven.') #== { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') #== { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") #== { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') #== {}