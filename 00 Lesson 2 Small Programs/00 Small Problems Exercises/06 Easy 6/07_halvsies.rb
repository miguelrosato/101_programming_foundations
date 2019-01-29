
def halvsies(arr)
  half_index = (arr.length.to_f / 2).round
  arr1 = []
  arr2 = []
  (0..(half_index - 1)).each do |i|
    arr1 << arr[i]
  end
  half_index2 = half_index + 1
  (half_index..(arr.length-1)).each do |j|
    arr2 << arr[j]
  end
  [arr1, arr2]
end


p halvsies([1, 2, 3, 4]) #== [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) #== [[1, 5, 2], [4, 3]]
p halvsies([5]) #== [[5], []]
p halvsies([]) #== [[], []]