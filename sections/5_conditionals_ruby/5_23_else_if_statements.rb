# frozen_string_literal: true

# - We can next conditionals, but it's better to add another
#   branch to a conditional with `elsif`
# - We can add as many elsifs as we want to handle open-ended
#   questions. `if` and `elsif` conditions will be checked in order
#   and only one clause will be run, even if later
#   conditions are true.
# - The else clause is usually used to handle unexpected
#   input. Expect the unexpected.

# ---

# if-else
# binary decision
# if yes, do this, if no, do that

# Comparing the size of numbers

x = rand(100)
y = rand(100)

# Nested conditionals
if x > y
  puts "#{x} is greater than #{y}"
elsif x == y
  puts "#{x} is equal to #{y}"
else
  puts "#{x} is less than #{y}"
end

# if-else-if elsif

if x > y
  puts "#{x} is greater than #{y}"
elsif x == y
  puts "#{x} is equal to #{y}"
else
  puts "#{x} is less than #{y}"
end

# Let's call the whole thing off
print 'You say '
you_say = gets.chomp

print 'I say '

case you_say
when 'potato'
  puts 'potahto.'
when 'tomato'
  puts 'tomahto.'
else
  # Expect the unexpected
  puts "let's call the whole thing off."
  # puts "Invalid input"
  # puts "I don't know what you mean."
end

hash = {}
hash.default = 'Not found.'
