# Build a program that displays when the user will retire and
# how many years she has to work till retirement.

print 'What is your age? '
age = gets.chomp.to_i

print 'At what age would you like to retire? '
retirement_age = gets.chomp.to_i

year = Time.now.year
time_to_retirement = retirement_age - age

puts "It's #{year}. You will retire in #{(year + time_to_retirement)}."
puts "You only have #{time_to_retirement} years of work to go!"
