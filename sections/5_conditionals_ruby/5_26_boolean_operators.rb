# frozen_string_literal: true

# - We have two boolean values (true, false), and there
#   boolean operators(NOT !, OR ||, AND &&)
# - We saw that ! reverses the truth value of a boolean, so
#   (!true=>false; !false=>true).
# - We saw that doubling up the negation !! takes us back to
#   where we started: #   (!!true=>true; !!false=>false) just like
#   negating a negative number gives a positive number.

# Boolean Logic/Arithmetic
# Boolean Value
true
false

# Boolean operators
# ! NOT
# && AND
# || OR

puts true
puts !true
puts !true.nil?

puts

puts false
puts !false
puts !false.nil?

# Logical Negation
# Flip the value of true or false to the other one.

# like negations with numbers :
puts 7
puts(-7)
puts(--7)

# Conditionals with Not:

raining = true

if !raining
  puts "ok, i'll come to the beach"
else
  puts 'no way'
end
