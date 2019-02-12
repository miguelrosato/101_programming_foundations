
def penultimate(str)
  result = str.split(" ")
  result[-2]
end

p penultimate('last word') #== 'last'
p penultimate('Launch School is great!') #== 'is'



def middle_word(str)
  result = str.split(" ")
  words = result.size

  if words.zero?
    nil
  elsif words.even?
    result[(words / 2).to_i - 1]
  else
    result[words / 2]
  end
end


p middle_word("")
p middle_word("Trying with different sizes of strings")
p middle_word("Trying with different sizes of strings again")
p middle_word("Trying words, numbers, 444, symbols, etc...")
p middle_word("Trying words, numbers, 444, symbols, etc..., again...")