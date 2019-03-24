# Lesson 5: Advanced Ruby Collections. Practice Problems
# Sorting, Nested Collections and Working with Blocks
# Question 8

# Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |_, value|
  value.each do |str|
    str.chars.each do |char|
      puts char if char =~ /[aeiou]/i
    end
  end
end


