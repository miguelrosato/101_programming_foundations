# 101 Programming Foundations. Small Problems Exercises.
# 04 How Many?

# Write a method that counts the number of occurrences of each element 
# in a given array.

def count_occurrences(vei)
  p vei
  frequencies = {}

  vei.each { |word| frequencies[word] = vei.count(word) }

  frequencies.each { |word, count| puts word + " => " + count.to_s }
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)
