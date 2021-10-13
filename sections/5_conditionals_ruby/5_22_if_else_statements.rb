# frozen_string_literal: true

# - We saw how to use an if-else statement to make a
#   binary decision, that is, where there are options.
# - We looked at the syntax of an if-else statement
#   (the `if`, `else`, and `end` keywords).
#   Pay attention to how we indent it.
# - We saw how we can check a variable containing a
#   boolean, or an expression that resutls in a boolean
#   ( >, <, <=, >=, ==, !=).

# ---

# Boolean
true
false

# If statement/expression (Conditional)
# Check a condition
# execute certain code depending on whether the condition was true or false

condition = true

puts 'im outside the conditional'
if condition
  puts 'it was true'
else
  puts 'it was false'
end
puts 'im back outside'

it_is_raining = true

if it_is_raining
  puts 'bring umbrella'
else
  puts 'use shorts'
end

# Railway tracks
#         //=========
# =======<
#         \\=========

railway_switch = true

if railway_switch
  puts 'train goes left'
else
  puts 'train goes right'
end

puts 'pick a number'
input = gets.chomp.to_i

magic_number = 7

if input > magic_number
  puts 'Your number is greater than the magic number'
else
  puts 'Your number is less than or equal the magic number'
end
