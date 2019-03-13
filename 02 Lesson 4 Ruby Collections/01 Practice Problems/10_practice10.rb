# What is the return value of the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# it will return [1, nil, nil], since the condition num > 1 will execute the puts num that return nil. the only case on which the condition not apply is in the first element (1)

