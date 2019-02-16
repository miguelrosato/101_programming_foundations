def substrings_at_start(str)
  arr = str.split("")
  result = []
  arr.each_with_index { |_, idx| result << arr[0..idx].join }
  result
end

p substrings_at_start('abc') # == ['a', 'ab', 'abc']
p substrings_at_start('a') # == ['a']
p substrings_at_start('xyzzy') # == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# The example above used an array. We can also use the string index directly as follows:

def substrings_at_start2(str)
  result = []
  (0..str.size - 1).each { |idx| result << str[0..idx] }
  result
end

p substrings_at_start2('abc') # == ['a', 'ab', 'abc']
p substrings_at_start2('a') # == ['a']
p substrings_at_start2('xyzzy') # == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
