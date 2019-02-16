
def fizzbuzz(num1, num2)
  result = []
  (num1..num2).each do |num|
    case
    when (num % 3).zero? && (num % 5).zero?
      result << "FizzBuzz"
    when (num % 3).zero?
      result << "Fizz"
    when (num % 5).zero?
      result << "Buzz"
    else
      result << num
    end
  end
  result.join(", ")
end




p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

def fizzbuzz2(num1, num2)
  result = []
  (num1..num2).each do |num|
    if (num % 3).zero? && (num % 5).zero?
      result << "FizzBuzz"
    elsif (num % 3).zero?
      result << "Fizz"
    elsif (num % 5).zero?
      result << "Buzz"
    else
      result << num
    end
  end
  result.join(", ")
end




p fizzbuzz2(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz