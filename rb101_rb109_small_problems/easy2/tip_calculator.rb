# Create a simple tip calculator. The program should prompt for
# a bill amount and a tip rate. The program must compute the tip
# and then display both the tip and the total amount of the bill.

print 'What is the bill? '
bill = gets.chomp.to_f

print 'What is the tip percentage? '
tip_percent = gets.chomp.to_f / 100

tip = (bill * tip_percent)
total = (bill + tip)

puts "The tip is $#{format('%.2f', tip)}"
puts "The total is $#{format('%.2f', total)}" 