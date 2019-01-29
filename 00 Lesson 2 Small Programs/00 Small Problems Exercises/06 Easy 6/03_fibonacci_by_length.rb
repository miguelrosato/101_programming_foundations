# Small Problems Exercises. Easy 6.
# 3.- Fibonacci numbers by lenght

# Write a method that calculates and returns the index of the first Fibonacci 
# number that has the number of digits specified as an argument. 
# (The first Fibonacci number has index 1.)

def find_fibonacci_index_by_length(num)

index = 2

fibonacci1 = 1
fibonacci2 = 1

loop do
  index += 1

  fibonacci = fibonacci1 + fibonacci2

  break if fibonacci.to_s.size >= num

  fibonacci1 = fibonacci2
  fibonacci2 = fibonacci
end
index
end

p find_fibonacci_index_by_length(2) # == 7           1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) # == 12          1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) # == 45
p find_fibonacci_index_by_length(100) # == 476
p find_fibonacci_index_by_length(1000) # == 4782
p find_fibonacci_index_by_length(10000) # == 47847
