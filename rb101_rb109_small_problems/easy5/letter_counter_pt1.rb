# Write a method that takes a string with one or more space separated words and returns
# a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

def word_sizes(string)
  words = string.split(' ')
  letter_counts = Hash.new(0)

  words.each do |word|
    letter_counts[word.size] += 1
  end
  letter_counts
end

p word_sizes('Four score and seven.') # == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') # == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") # == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') # == {}