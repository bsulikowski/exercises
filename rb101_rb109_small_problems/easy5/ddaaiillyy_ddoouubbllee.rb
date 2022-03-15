# Write a method that takes a string argument and returns a new string that
# contains the value of the original string with all consecutive duplicate characters
# collapsed into a single character. You may not use String#squeeze or String#squeeze!.

def crunch(string)
  clean_string = []
  string.chars.map do |char|
    clean_string << char unless char == clean_string.last
  end
  clean_string.join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''