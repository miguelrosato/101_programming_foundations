# Small Problems Exercises. Easy 6.
# 1.- Cute Angles

# Write a method that takes a floating point number that represents an angle
# between 0 and 360 degrees and returns a String that represents that angle
# in degrees, minutes and seconds. You should use a degree symbol (°) to
# represent degrees, a single quote (') to represent minutes, and a double
# quote (") to represent seconds. A degree has 60 minutes, while a minute
# has 60 seconds.

# Best Soulution by Launch School
# Uses .divmod method 
# .divmod takes a float value and return an array with the quotient and the modulus as two separate values
# For example 
# Uses multiple variable assignment 



DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round            # Convert the angle as total seconds
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE) # gets degrees as quotient and remaining seconds as the modulus
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)       # gets the total minutes and the final seconds
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)            # present the result of angle, minuts, and seconds formatted
end

puts dms(30) # == %(30°00'00")
puts dms(76.73) # == %(76°43'48")
puts dms(254.6) # == %(254°36'00")
puts dms(93.034773) # == %(93°02'05")
puts dms(0) # == %(0°00'00")
puts dms(360) # == %(360°00'00") || dms(360) == %(0°00'00")
puts dms(-1475.385432) 
puts dms(-279.84756) 