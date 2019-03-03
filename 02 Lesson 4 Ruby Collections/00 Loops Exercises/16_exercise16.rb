# Given the array below, use loop to remove and print each name. Stop the loop once names doesn't contain any more elements.

names = ['Sally', 'Joe', 'Lisa', 'Henry']

# Keep in mind to only use loop, not while, until, etc.

#loop do
#  name = names.shift
#  break if name.nil?
#  puts name
#end

# better solution (does not need to create a variable name):

loop do
  puts names.shift
  break if names.empty?
end
