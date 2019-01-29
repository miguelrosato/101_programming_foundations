# Small Problems Exercises. Easy 6.
# 2.- Delete Vowels

# Write a method that takes an array of strings, and returns an array of the 
# same string values, except with the vowels (a, e, i, o, u) removed.

def remove_vowels(arr)
  arr.map { |str| str.delete("aeiouAEIOU") }
end

def remove_vowels2(arr)
  arr.each do |str|
    str.gsub!(/[aeiou]/i, "")
  end
end



p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) # == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) # == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) # == ['BC', '', 'XYZ']


p remove_vowels2(%w(abcdefghijklmnopqrstuvwxyz)) # == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels2(%w(green YELLOW black white)) # == %w(grn YLLW blck wht)
p remove_vowels2(%w(ABC AEIOU XYZ)) # == ['BC', '', 'XYZ']