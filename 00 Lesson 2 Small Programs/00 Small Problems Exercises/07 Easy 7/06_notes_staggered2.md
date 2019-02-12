# Small Problems Exercises. Easy 7.

## 6.- Staggered Caps (Part 2)

## Problem Enunciate
Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.


## Understanding the Problem:

input: a String
output: a new string with only the alphabetic characters alternating between upcase and downcase. 

Can use REGEX, string with index, even? odd? method


## Examples / test cases:

```ruby
staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
```

## Data. Data Structure

Take the initial string and split it. 

The result will be an array of characters. Now we can use a counter, mixed with regex to identify if the current character is alphabetic or not. If the first character is alphabetic, then we upcase that character and add 1 to the counter. If the next character is not alphanumeric, we don't add anything to the coiunter, so it is continues at 1. if the next character is alphanumeric, then we add 1 to the counter and downcase the current character. Our counter will be now two. We upcase if the counter is even and downcase if counter is odd
 

## Algorithm:

in the 06_staggered_caps2.rb file

## Abstraction: