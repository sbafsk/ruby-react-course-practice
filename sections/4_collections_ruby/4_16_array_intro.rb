# frozen_string_literal: true

# - An array is a collection, which means an object that holds other objects (like a variable, but with more than one object.)
# - We create an array by writing the square brackets [] with objects inside, separated by commas.
#   We can do this on one line or over many lines.
# - We can put any type of object in each slot of an array,
#   and an array can contain more than one type of object.
# - Puts will print each member of the array on its own line,
#   p will show us the array with the square brackets and commas.
# ---
# Arrays
# Type of collection
# Object that holds/points to other objects, like a variable
# like a variable that holds more than one object.

my_numbers = [1, 35, 71, 102]
p my_numbers
puts my_numbers # each elem in new line

top_5_foods = ['Grilled Cheese', 'Pizza', 'Grilled Cheese', 'Bacon', 'Grilled Cheese with Bacon']

threes = [3, 3.0, '3', '3.0', 'three', :three]
p threes
puts threes

shopping_cart = %w[egg bacon cheese]
