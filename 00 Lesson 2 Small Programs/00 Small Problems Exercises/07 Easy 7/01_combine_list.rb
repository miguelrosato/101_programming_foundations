
def interleave(arr1, arr2)
  result = []
  (0..arr1.length - 1).each do |idx|
    result << arr1[idx]
    result << arr2[idx]
  end
  result
end

p interleave([1, 2, 3], ['a', 'b', 'c']) # == [1, 'a', 2, 'b', 3, 'c']
p interleave(["x", "y", "z"], ['a', 'b', 'c'])


def interleave2(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave2([1, 2, 3], ['a', 'b', 'c']) # == [1, 'a', 2, 'b', 3, 'c']
p interleave2(["x", "y", "z"], ['a', 'b', 'c'])