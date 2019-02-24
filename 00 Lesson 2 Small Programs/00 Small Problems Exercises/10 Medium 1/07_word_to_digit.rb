
NUMBER_HASH = {
  "one" => "1",
  "two" => "2",
  "three" => "3",
  "four" => "4",
  "five" => "5",
  "six" => "6",
  "seven" => "7",
  "eight" => "8",
  "nine" => "9",
  "zero" => "0"
}.freeze

def word_to_digit(str)
  NUMBER_HASH.each do |key, val|
    str.gsub!(/\b#{key}\b/, val) 
  end
  str
end

# \b ensures that the string is a number and 
# not a word that may contain the number like "freight" to "fr8".


p word_to_digit('Please call me at five five five one two three four. Thanks.')

# To resolve the number with spaces number:

def word_to_digit3(str)
  n = []
  NUMBER_HASH.each do |key, val|
    str.gsub!(/\b#{key}\b/, val) 
  end
  str.chars { |num| num.match(/[\b\d\b]/) ? n << num : num }
  if n.length == 10
    num_str = "(#{n[0]}#{n[1]}#{n[2]}) #{n[3]}#{n[4]}#{n[5]} - #{n[6]}#{n[7]}#{n[8]}#{n[9]}"
    "Please call me at #{num_str}. Thanks"
  else
    "Please call me at #{n.join}. Thanks"
  end
end

puts " "

p word_to_digit3('Please call me at five five five one two three four. Thanks.')

p word_to_digit3('Please call me at one two three four five six seven eight nine zero. Thanks.')