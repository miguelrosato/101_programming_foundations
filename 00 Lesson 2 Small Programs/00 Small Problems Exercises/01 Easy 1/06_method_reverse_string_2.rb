# 101 Programming Foundations. Small Problems Exercises.
# 06 Reverse it. Part 2

# Write a method that takes one argument, a string containing one or more words,
# and returns the given string with all five or more letter words reversed. Each
# string will consist of only letters and spaces. Spaces should be included only
# when more than one word is present.

def reverse_words(str)
  words = []

  str.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(" ")
end

puts reverse_words("Professional")          # => lanoisseforP
puts reverse_words("Walk around the block") # => Walk dnuora the kcolb
puts reverse_words("Launch School")         # => hcnuaL loohcS
