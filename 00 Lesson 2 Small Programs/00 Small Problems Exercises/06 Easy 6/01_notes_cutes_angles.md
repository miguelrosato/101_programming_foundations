# Small Problems Exercises. Easy 6.

## 1.- Cute Angles

## Problem Enunciate
Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.


## Understanding the Problem:

input: a Float number
output: the angular value in degrees, minutes and secons, all expressed as a single string value 

For the Angle:

1. If the number is less than 360, then the angle, is the integer part of the number
2. If the number is greater than 360, then the angle is the integer result of the modulo of the number by 360 (number % 360)
3. If the number is less than 0 but greater than -360, then we need to add 360 to have the positive angle and apply point 1.
4. If the numbere is less than -360, then we need to:
   - Get the negative integer
   - Apply the modulo of 360 to the negative integer (attention, the result is positive)
   - Multiply by -1
   - Add the decimal values from the original negative integer
   - Add 360 to the result to get the positive angle. 

For the minutes, we multiply the decimal part of the initial angle by 60. i.e.: 121.374 => 0.374 * 60 = 22.44

- So we take the integer part of the resulting number (in this case 22) and those will be the minutes

For the seconds, we multipoly the decimal part of the minutes resulted from the previous operation (in this case 0.44) and multiply by 60 => 0.44 * 60 = 26.4 

- The complete value, including the decimals (in this case 26.4) are the seconds

We then apply a method that incorporate all the values into the resulting string

- rules:
  - If minutes are less than 10, we need to append a zero to the string solution
  - If seconds are less than 10, we need to append a zero to the string solution

## Examples / test cases:

```ruby
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
```

## Data. Data Structure

Take a float number

create a new variable that take the integer part of the float

create a new variable that take the decimal part of the float

Apply the angle criteria and find the resulting positive angle between 0 and 360

Apply the minutes criteria to the decimal part of the float

Apply the seconds criteria to the decimal part of the minutes

## Algorithm:

in the 01_cutes_angles.rb file

## Abstraction:
