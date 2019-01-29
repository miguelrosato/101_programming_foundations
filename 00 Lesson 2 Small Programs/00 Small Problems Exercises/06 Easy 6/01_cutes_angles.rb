# Small Problems Exercises. Easy 6.
# 1.- Cute Angles

# Write a method that takes a floating point number that represents an angle
# between 0 and 360 degrees and returns a String that represents that angle
# in degrees, minutes and seconds. You should use a degree symbol (°) to
# represent degrees, a single quote (') to represent minutes, and a double
# quote (") to represent seconds. A degree has 60 minutes, while a minute
# has 60 seconds.

DEGREE = "\xC2\xB0".freeze


def dms(num)

  if num < 0
    num = dms_negative(num)
    angle = num.floor
    p num
    p angle
  elsif num >= 0 && num <= 360
    angle = num.floor
  else
    angle = num % 360 
  end
  minutes = (num - num.floor) * 60
  rounded_minutes = minutes.floor
  seconds = ((minutes - minutes.floor) * 60).floor
  rounded_minutes = "0#{rounded_minutes}" if rounded_minutes < 10
  seconds = "0#{seconds}" if seconds < 10
  "#{angle}#{DEGREE}#{rounded_minutes}'#{seconds}\""
end

def dms_negative(neg)
  if neg >= -360 && neg < 0
    neg + 360
  elsif neg < -360
    (neg.floor % 360) * -1 - (neg - neg.floor) + 360
  end
end




puts dms(30) # == %(30°00'00")
puts dms(76.73) # == %(76°43'48")
puts dms(254.6) # == %(254°36'00")
puts dms(93.034773) # == %(93°02'05")
puts dms(0) # == %(0°00'00")
puts dms(360) # == %(360°00'00") || dms(360) == %(0°00'00")
puts dms(-1475.385432) 
puts dms(-279.84756) 

# Using .divmod method is more efficient for resolving this exercise