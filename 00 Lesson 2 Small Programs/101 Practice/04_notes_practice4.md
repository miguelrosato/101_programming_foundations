# Study Practice Group

## 8.- Word to Digit 

## Problem Enunciate

Write function scramble(str1,str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise returns false.


## Understanding the Problem:

input: two strings
output: A boolean that is true if all the letters in the second string are included in the first one


## Examples / test cases:

```ruby
p scramble('rkqodlw','world') == true
p scramble('cedewaraaossoqqyt','codewars') == true
p scramble('katas','steak') == false
p scramble('scriptjava','javascript') == true
p scramble('scriptingjava','javascript') == true
```

## Data. Data Structure

Create an iterator with each element of the string two checking if are included in string 1. 
if the string element is included, add 1 to a counter
finally compare the final value of the counter with the size of the second string

begin=
input: two strings
output: boolean
rules: part of string one can be re-arranged to match string 2
algorithm:
  - str1 = a, str2 = aa str1 need to have one more or str 2 need to have less elements to match
  - The pattern is that the count of each character in str2 cannot be greater than the count of the same character in str 1
end= 

## Algorithm:

in the 10_fibonacci3.rb file

## Abstraction: