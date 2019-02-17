
def sequence(num)
  result = []
  (1..num).each { |val| result << val }
  result
end




p sequence(5) # == [1, 2, 3, 4, 5]
p sequence(3) # == [1, 2, 3]
p sequence(1) # == [1]

# A better answer, using the .to_a method

def sequence2(num)
  (1..num).to_a
end

puts " "


p sequence2(5) # == [1, 2, 3, 4, 5]
p sequence2(3) # == [1, 2, 3]
p sequence2(1) # == [1]


# Further Exploration, if a negative number is given:

def sequence3(num)
  num > 0 ? (1..num).to_a : -1.downto(num).to_a
end

puts " "


p sequence3(5) # == [1, 2, 3, 4, 5]
p sequence3(3) # == [1, 2, 3]
p sequence3(1) # == [1]
p sequence3(-1)
p sequence3(-5)
