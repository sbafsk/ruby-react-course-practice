# frozen_string_literal: true

# - We can assing a default value for a method variable with the single equals assignment operator `=`,
#   and if the method call does not include an argument for this varialbe,
#   the default value will be used instead.
# - If a method normally takes 3 arguments, and we assign default values for 2 of the method variables,
#   then the method can take between 1 and 3 arguments.
# - If you call a method with at least the minimun number of arguments,
#  but fewer than the maximun, then Ruby will first make sure it assigns the required arguemnts,
#  then the optional arguments from left to right,
#  but it will always assign your arguments in the order you passed them.

# ---

def sum_two(x, y)
  x + y
end

# sum_two(1, 4, 6) # arg error
# sum_two(6) # arg error

def sum_upto_three(x, y = 0, z = 0)
  x + y + z
end

sum_upto_three(1, 4, 6) # 11
sum_upto_three(6) # 6

def print_trio(first = 'first', second = 'second', third)
  puts first
  puts second
  puts third
end

print_trio('WHAT')

def greet(name = '...you', greeting = 'hey')
  puts "#{greeting} #{name}"
end

greet('Hello', 'Sir')
greet('Hello')
greet
greet('Martha Stewart')
