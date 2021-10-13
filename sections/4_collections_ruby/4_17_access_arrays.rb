# frozen_string_literal: true

# - Since array are ordered, and each element has an index (which start at 0),
#   we can do array[index] to look up the value at a particular index.
# - We can do reverse lookup to find the index that matches a particular value
#   by using array.index(value)
# - We can use array[index, length] to get a sub-array of a particular length.
#   We can also use array[-negative_index] to look up
#   an element by its distance from the end of the array.

# ---

# Arrays are ordered

my_array = %w[first second third fourth]

p my_array

p my_array[0]

# Index starts at 0

# Reverse Lookup
p my_array.index('first')

p my_array.slice(2)
p my_array[2]

p my_array.slice(1, 2)
p my_array[1, 2]

# Methods for accesing in an array

p my_array.first
p my_array[0]

p my_array.last
p my_array[my_array.length - 1]
p my_array[-1]

# negative index start backwards
p my_array[-3]
p my_array[-my_array.length]

p my_array[-3, 2]
p my_array[-4, 2]
