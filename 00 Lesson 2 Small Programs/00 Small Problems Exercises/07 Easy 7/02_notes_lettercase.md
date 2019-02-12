# Small Problems Exercises. Easy 7.

## 2.- Lettercase Counter

## Problem Enunciate
Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither.


## Understanding the Problem:

input: a String
output: a Hash that contain three Keys as follows: {lowercase: , uppercase: , neither: }. each key value is the count of the characters that meet each key criteria.

Recommend to use REGEX


## Examples / test cases:

```ruby
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
```

## Data. Data Structure

create a Hash with the three keys (lowercase, uppercase, neither) with empty values

Use REGEX to count the number of lowercase characters and assign the result to the lowercase value.

Use REGEX to count the number of uppercase characters and assign the result to the uppercase value.

Use REGEX to count the number of non letter characters and assign the result to the neither value.

Return the Hash with the new values

## Algorithm:

in the 02_lettercase_counter.rb file

## Abstraction: