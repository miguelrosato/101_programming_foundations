# My first attempt to program a loan calculator.
# The following activates the YML file requirement
LANGUAGE = "en"
require "yaml"
MESSAGES = YAML.load_file("loan_config.yml")
# The following method invoke the string associated to the respective .yml key. 
def messages(message, lang = "en")
  MESSAGES[lang][message]
end
# All variables defined since these are required by methods. 
loan_amount = nil
annual_interest = nil
monthly_interest = nil
number_years = nil
number_months = nil
monthly_payment = nil
# The next method puts the string from .yml in the required language and leaves
# a line.
def prompt(key)
  message = messages(key, LANGUAGE)
  Kernel.puts("=> #{message}")
end

# The next method puts the string from .yml in the required language and keep
# the line to add more data (numbers)
def printer(key)
  message = messages(key, LANGUAGE)
  Kernel.print("=> #{message}")
end

# The following method applies REGEX to validate a number
def valid_number?(num)
  num.to_s unless num.is_a? String
  /\A[+-]?\d+(\.[\d]+)?\z/.match num
end

# The following method requires the user to introduce a number and then
# validates it.
def input_number(num)
  loop do
    num = Kernel.gets().chomp()
    break if valid_number?(num) 

    prompt("invalid_input")
  end
  num
end

def month_interest(int)
  int / (12 * 100)
end

def months(year)
  year * 12
end

def month_pay(p, j, n)
  p * (j / (1 - (1 + j)**(-n)))
  # p is the loan amount or principal
  # j is the interest in months
  # n is the number of months
end

prompt("welcome")

loop do # Main Loop that allows to repeat loan calculation
  prompt("principal")

  loan_amount = input_number(loan_amount).to_f

  prompt("year_interest")

  annual_interest = input_number(annual_interest)

  prompt("years_to_repay")

  number_years = input_number(number_years)

  monthly_interest = month_interest(annual_interest.to_f)

  number_months = months(number_years.to_f)

  monthly_payment = month_pay(loan_amount, monthly_interest, number_months)

  prompt("calculating")
  printer("repayment_month")
  Kernel.puts(monthly_payment.round(2))

  printer("total_payment")
  Kernel.puts((monthly_payment * number_months).round(2))

  prompt("restart")
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?("y")
end
