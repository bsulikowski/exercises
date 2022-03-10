# Write a program that asks the user to enter an integer greater than 0,
# then asks if the user wants to determine the sum or product of all
# numbers between 1 and the entered integer.

def prompt(message)
  puts ">> #{message}"
end

prompt 'Please enter an integer greater than 0:'
integer = gets.chomp.to_i

prompt "Enter 's' to compute the sum, 'p' to compute the product."
choice = gets.chomp.downcase

case choice
when 's'
  result = 0

  for num in 1..integer
    result += num
  end

  puts "The sum of the integers between 1 and #{integer} is #{result}."
when 'p'
  result = 1
  
  for num in 1..integer
    result *= num
  end

  puts "The product of the integers between 1 and #{integer} is #{result}."
else
  puts 'Oops. Unknown operation.'
end
