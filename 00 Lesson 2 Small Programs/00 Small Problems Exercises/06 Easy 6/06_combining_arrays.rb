
def merge(arr1, arr2)
  (arr1 << arr2).flatten.uniq!
end


p merge([1, 3, 5], [3, 6, 9]) #== [1, 3, 5, 6, 9]
p merge(["a", "b", "c", "d"], ["c", "a", "b", "d", "e", "n", "q", "p"])

# Quicker method array |

def merge2(array_1, array_2)
  array_1 | array_2
end

p merge2([1, 3, 5], [3, 6, 9]) #== [1, 3, 5, 6, 9]
p merge2(["a", "b", "c", "d"], ["c", "a", "b", "d", "e", "n", "q", "p"])
