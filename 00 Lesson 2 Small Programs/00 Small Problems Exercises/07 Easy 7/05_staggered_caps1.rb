
def staggered_case(str)
  staggered_arr = str.chars.each_with_index.map do |char, idx|
    idx.even? ? char.upcase : char.downcase
  end
  staggered_arr.join
end


p staggered_case('I Love Launch School!') #== 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') #== 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') #== 'IgNoRe 77 ThE 444 NuMbErS'


def staggered_case2(str)
  str.chars.each_with_index.map do |char, idx|
    idx.odd? ? char.upcase : char.downcase
  end.join
end


p staggered_case2('I Love Launch School!') #== 'I LoVe lAuNcH ScHoOl!'
p staggered_case2('ALL_CAPS') #== 'AlL_CaPs'
p staggered_case2('ignore 77 the 444 numbers') #== 'IgNoRe 77 ThE 444 NuMbErS'