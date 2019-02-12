
def word_cap(str)
  str.split.map(&:capitalize).join(" ")
end


puts word_cap('four score and seven') #== 'Four Score And Seven'
puts word_cap('the javaScript language') #== 'The Javascript Language'
puts word_cap('this is a "quoted" word') #== 'This Is A "quoted" Word'

def word_cap2(str)  # Without Using .capitalize method
  str.split.each { |word| word[0] = word[0].upcase }.join(" ")
end


puts word_cap2('four score and seven') #== 'Four Score And Seven'
puts word_cap2('the javaScript language') #== 'The Javascript Language'
puts word_cap2('this is a "quoted" word') #== 'This Is A "quoted" Word'

def word_cap3(str)
  str.split.map { |word| word.sub(word[0], word[0].upcase) }.join(" ")
end

puts word_cap3('four score and seven') #== 'Four Score And Seven'
puts word_cap3('the javaScript language') #== 'The Javascript Language'
puts word_cap3('this is a "quoted" word') #== 'This Is A "quoted" Word'

