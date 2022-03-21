# Write a method that takes a floating point number that represents an angle between 0 and
# 360 degrees and returns a String that represents that angle in degrees, minutes and seconds.
# You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes,
# and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

# You should use two digit numbers with leading zeros when formatting the minutes and seconds, e.g., 321°03'07".

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60

def dms(angle_float)
  degrees = angle_float.floor
  degrees = degrees % 360 if degrees > 360 || degrees < 0
  minutes = ((angle_float % 1).round(3) * MINUTES_PER_DEGREE)
  seconds = ((minutes % 1.round(3)) * SECONDS_PER_MINUTE).round
  minutes = minutes.floor

  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

p dms(30) # == %(30°00'00")
p dms(76.73) # == %(76°43'48")
p dms(254.6) # == %(254°36'00")
p dms(93.034773) # == %(93°02'05")
p dms(0) # == %(0°00'00")
p dms(360) # == %(360°00'00") || dms(360) == %(0°00'00")
p dms(400) # == %(400°00'00")
p dms(-40) # == %(-40°00'00")
p dms(-420) # == %(-420°00'00")