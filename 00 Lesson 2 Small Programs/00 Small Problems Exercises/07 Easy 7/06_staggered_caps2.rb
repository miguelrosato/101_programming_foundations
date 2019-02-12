
def staggered_case(str)
  count = 0
  staggered_arr = str.chars.map do |char|
    if char =~ /[a-z]/i && count.even?
      count += 1
      char.upcase
    elsif char =~ /[a-z]/i && count.odd?
      count += 1
      char.downcase
    else
      char
    end
  end
  staggered_arr.join
end


p staggered_case('I Love Launch School!') #== 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') #== 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') #== 'IgNoRe 77 ThE 444 nUmBeRs'