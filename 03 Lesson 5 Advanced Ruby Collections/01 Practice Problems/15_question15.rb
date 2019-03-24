# Lesson 5: Advanced Ruby Collections. Practice Problems
# Sorting, Nested Collections and Working with Blocks
# Question 15

# Given this data structure write some code to return an array which contains only the hashes where all the integers are even.

def hash_even(arr)
  arr.select do |hsh|
    hsh.all? do |_, sub_arr|
      sub_arr.all?(&:even?)
    end
  end
end

my_arr = [{ a: [1, 2, 3] }, { b: [2, 4, 6], c: [3, 6], d: [4] }, { e: [8], f: [6, 10] }]

p hash_even(my_arr)

# => [{:e=>[8], :f=>[6, 10]}]