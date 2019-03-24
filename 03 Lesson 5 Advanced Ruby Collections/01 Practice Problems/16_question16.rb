# Lesson 5: Advanced Ruby Collections. Practice Problems
# Sorting, Nested Collections and Working with Blocks
# Question 16

# A UUID is a type of identifier often used as a way to uniquely identify items...which may not all be created by the same system. That is, without any form of synchronization, two or more separate computer systems can create new items and label them with a UUID with no significant chance of stepping on each other's toes.

# It accomplishes this feat through massive randomization. The number of possible UUID values is approximately 3.4 X 10E38.

# Each UUID consists of 32 hexadecimal characters, and is typically broken into 5 sections like this 8-4-4-4-12 and represented as a string.

# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

# Write a method that returns one UUID when called with no parameters.

HEX = { 0 => "0",
        1 => "1",
        2 => "2",
        3 => "3",
        4 => "4",
        5 => "5",
        6 => "6",
        7 => "7",
        8 => "8",
        9 => "9",
        10 => "a",
        11 => "b",
        12 => "c",
        13 => "d",
        14 => "e",
        15 => "f" }.freeze

def eight_char(hsh)
  key = ""
  (0..7).each do |char|
    char = hsh[rand(16)]
    key << char
  end
  key
end

def four_char(hsh)
  key = ""
  (0..3).each do |char|
    char = hsh[rand(16)]
    key << char
  end
  key
end

def twelve_char(hsh)
  key = ""
  (0..11).each do |char|
    char = hsh[rand(16)]
    key << char
  end
  key
end

def uuid(hsh)
  "#{eight_char(hsh)}-#{four_char(hsh)}-#{four_char(hsh)}-#{four_char(hsh)}-#{twelve_char(hsh)}"
end

p uuid(HEX)