# Write a method that takes an array of strings, and returns an array of the same
# string values, except with the vowels (a, e, i, o, u) removed.

def remove_vowels(array_of_strings)
  no_vowels = array_of_strings.map do |string|
    string.delete('aeiouAEIOU')
  end

  no_vowels
end


p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']