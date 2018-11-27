# Small Problems Exercises. Easy 5.
# 5.- Clean words

# Given a string that consists of some words and an assortment of non-alphabetic
# characters, write a method that returns that string with all of the 
# non-alphabetic characters replaced by spaces.

def cleanup(str)
  str.gsub(/[^a-z]+/i, " ")
end

p cleanup("---what's my +*& line?") #== ' what s my line '
