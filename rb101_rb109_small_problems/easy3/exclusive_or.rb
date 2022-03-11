=begin
The || operator returns a truthy value if either or both of its operands are truthy.
If both operands are falsey, it returns a falsey value. The && operator returns a truthy
value if both of its operands are truthy, and a falsey value if either operand is falsey.
This works great until you need only one of two conditions to be truthy, the so-called exclusive or.

In this exercise, you will write a function named xor that takes two arguments, and returns
true if exactly one of its arguments is truthy, false otherwise. Note that we are looking for
a boolean result instead of a truthy/falsy value as returned by || and &&.
=end

def xor?(test1, test2)
  (test1 && !test2) || (!test1 && test2)
end

p xor?(5.even?, 4.even?) # == true
p xor?(5.odd?, 4.odd?) # == true
p xor?(5.odd?, 4.even?) # == false
p xor?(5.even?, 4.odd?) # == false