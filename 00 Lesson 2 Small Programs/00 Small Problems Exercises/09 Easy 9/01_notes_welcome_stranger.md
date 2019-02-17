# Small Problems Exercises. Easy 9.

## 1.- Welcome stranger

## Problem Enunciate
Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name. The hash will contain two keys, :title and :occupation, and the appropriate values. Your method should return a greeting that uses the person's full name, and mentions the person's title.

## Understanding the Problem:

input: An Array which elements compose a name. Each element of the name is an element of the array. 
input: A hash composed of two keys, :title and :occupation, with the required values. 
output: A string that declares the full name, and then informs that it's good to have a person with his title and profession.


## Examples / test cases:

```ruby
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> Hello, John Q Doe! Nice to have a Master Plumber around.
```

## Data. Data Structure

create a string declaration, on which the name is the array.join(" ") and then continue declaring using the hash with their keys in the same string.
 
## Algorithm:

in the 01_welcome_stranger.rb file

## Abstraction: