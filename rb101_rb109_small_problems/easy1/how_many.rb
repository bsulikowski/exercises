# Write a method that counts the number of occurrences of each element in a given array.

def count_occurrences(array)
  occurrences = {}
  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |word, count|
    puts "#{word} => #{count}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)
