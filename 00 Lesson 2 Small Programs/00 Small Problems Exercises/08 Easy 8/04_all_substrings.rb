

def substrings_at_start(str)
  result = []
  (0..str.size - 1).each { |idx| result << str[0..idx] }
  result
end

p substrings_at_start('abc') # == ['a', 'ab', 'abc']
p substrings_at_start('a') # == ['a']
p substrings_at_start('xyzzy') # == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

def substrings(str)
  result_final = []
  (0..str.size - 1).each do |idx2|
    result_final << substrings_at_start(str[idx2..str.size - 1])
  end
  result_final.flatten
end

p substrings("abcde")