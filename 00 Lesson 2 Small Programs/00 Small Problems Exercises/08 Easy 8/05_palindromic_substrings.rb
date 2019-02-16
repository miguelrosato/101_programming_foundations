

def substrings_at_start(str)
  result = []
  (0..str.size - 1).each { |idx| result << str[0..idx] }
  result
end

def substrings(str)
  result_final = []
  (0..str.size - 1).each do |idx2|
    result_final << substrings_at_start(str[idx2..str.size - 1])
  end
  result_final.flatten
end

def palindromes(str)
  palindromes_arr = []
  initial_arr = substrings(str)
  initial_arr.each do |pal|
    palindromes_arr << pal if pal == pal.reverse && pal.length > 1
  end
  palindromes_arr
end


p palindromes('abcd') # == []
p palindromes('madam') # == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') # == [
  # 'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  # 'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  # '-madam-', 'madam', 'ada', 'oo'
# ]
p palindromes('knitting cassettes') # == [
  # 'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]
