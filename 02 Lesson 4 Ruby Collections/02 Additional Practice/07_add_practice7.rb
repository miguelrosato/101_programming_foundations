# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"

#ex:

# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

frequencies = Hash.new(0)

statement_arr = statement.delete(" ").chars
p statement_arr
statement_arr.each do |char|
  frequencies[char] += 1
end

p frequencies


# Another Solution:


result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end
puts " "
p result