
def show_multiplicative_average(arr)
  enumerator = 1.to_f

  arr.each { |num| enumerator *= num }

  result = (enumerator / arr.length)

  puts "The result is #{format('%.3f', result)}"

end


show_multiplicative_average([3, 5])
# The result is 7.500

show_multiplicative_average([6])
# The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667


def show_multiplicative_average2(arr)

  result = arr.inject(:*).to_f / arr.length 

  puts "The result is #{format('%.3f', result)}"

end


show_multiplicative_average2([3, 5])
# The result is 7.500

show_multiplicative_average2([6])
# The result is 6.000

show_multiplicative_average2([2, 5, 7, 11, 13, 17])
# The result is 28361.667