def fibonacci(num)
  fib_arr = [1, 1]

  (2..num).each do |idx|
    fib_arr << (fib_arr[idx - 2] + fib_arr[idx - 1])
  end
  fib_arr[num - 1]
end

p fibonacci(20) # == 6765
p fibonacci(100) # == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501