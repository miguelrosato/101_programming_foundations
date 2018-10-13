# Small Problems Exercises. Easy 4.
# 6.- Running Totals.


# Write a method that takes an Array of numbers, and returns an Array with the
# same number of elements, and each element has the running total from the 
# original Array.


def running_total(arr)
  sum = 0
  arr.map {|val| sum += val}
end

p running_total([2, 5, 13]) # == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) # == [14, 25, 32, 47, 67]
p running_total([3]) # == [3]
p running_total([]) # == []

def running_total2(array)
  running_array = [0]
  array.each_with_index do |number, index|
    running_array[index] = (array[index] += running_array[index-1])
  end
end

p running_total2([2, 5, 13]) # == [2, 7, 20]
p running_total2([14, 11, 7, 15, 20]) # == [14, 25, 32, 47, 67]
p running_total2([3]) # == [3]
p running_total2([]) # == []


def running_total3(arr)
  res_arr = []
  total = 0

  arr.each do |val|
    res_arr << val + total
    total += val
  end
  res_arr
end

p running_total3([2, 5, 13]) # == [2, 7, 20]
p running_total3([14, 11, 7, 15, 20]) # == [14, 25, 32, 47, 67]
p running_total3([3]) # == [3]
p running_total3([]) # == []


def running_total4(array)
  running_array = [0]
  array.each_with_index do |_number, index|
    running_array[index] = (array[index] += running_array[index-1])
  end
end

p running_total4([2, 5, 13]) # == [2, 7, 20]
p running_total4([14, 11, 7, 15, 20]) # == [14, 25, 32, 47, 67]
p running_total4([3]) # == [3]
p running_total4([]) # == []
