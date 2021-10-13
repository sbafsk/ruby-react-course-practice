# frozen_string_literal: true

# - Numbers are objects (Integers or Floats), and can be referenced literally (`3`)
#   or via variable (`stooges`)
# - We learned the symbols for mathematical operators (+,-,*,**,/,%)
#   and why `/` is weird (Floor division)
# - How we can construct a mathematical expression (with literals or variables),
#   we can use brackets () to change the order of operatios,
#   and we can save the result into a variable.

# ---

stooges = 3
horsemen = 4

puts 3 + 4
puts stooges + horsemen

sum = 3 + 4 + 12 + 100

three = 3
number_of_pies = 3
number_of_tarts = 4
number_of_pastries = number_of_pies + number_of_tarts

bananas = 0
bananas += 1
bananas += 1 # incrementing

puts 32 - 12
puts 45 * 3
puts 5**3 # 5^3

puts 7 / 2 # 3.5 or 3 reminder 1, Ruby says 3
puts 7 % 2 # reminder

# Integers
4
5
0
-1232

# Float, decimal values

pi = 3.14
p 7.0 / 2 # 3.5
p 7 / 2.0 # 3.5

p 1 + 2 * 3
p (1 + 2) * 3
