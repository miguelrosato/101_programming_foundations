# Small Problems Exercises. Easy 6.

## 2.- Cute Angles

## Problem Enunciate

Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.


## Understanding the Problem:

Input: an array of strings
Output: a new array of strings, with the vowels from the previous string removed
Use Regex and gsub method

## Examples / test cases:

remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']


## Data. Data Structure
modify each element of the initial array, eliminating each vowel. 
Enumerable, map, string selection


## Algorithm:

In 02_delete_vowels.rb

## Abstraction:
