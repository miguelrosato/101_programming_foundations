# Lesson 5: Advanced Ruby Collections. Practice Problems
# Sorting, Nested Collections and Working with Blocks
# Question 10

# Given the following data structure and without modifying the original array, use the map method to return a new array identical in structure to the original but where the value of each integer is incremented by 1.

def increment_hash_value(arr)
  arr.map do |hsh|
    result_hash = {}
    hsh.each do |key, value|
      result_hash[key] = value + 1
    end
    result_hash
  end
end

my_array = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

p increment_hash_value(my_array)