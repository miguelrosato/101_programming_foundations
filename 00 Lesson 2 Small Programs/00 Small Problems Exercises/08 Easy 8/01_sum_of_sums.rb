def sum_of_sums(arr)
  result = 0
  counter = arr.size
  arr.each do |num|
    result += num * counter
    counter -= 1
  end
  result
end

p sum_of_sums([3, 5, 2]) # == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) # == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) # == 4
p sum_of_sums([1, 2, 3, 4, 5]) # == 35

# Another way, mapping an array of arrays:

def sum_of_sums2(arr)
  new_arr = []
  arr.each_with_index{|_, i| new_arr << arr[0..i]}
  new_arr.flatten.sum
end

p sum_of_sums2([3, 5, 2]) # == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums2([1, 5, 7, 3]) # == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums2([4]) # == 4
p sum_of_sums2([1, 2, 3, 4, 5]) # == 35