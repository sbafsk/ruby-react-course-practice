# frozen_string_literal: true

# - We learner that variables hold/refer to OBJECTS.
# - Looked at some types of objects we can save in variables
#   (Strings, Numbers, Arrays, Hashes)
# - Learned how to assign and re-assign a variable with the assignment operator =,
#   and that anything we can do to an object directly can also be done via a variable.

# ---

# save my name
my_name = 'Sebastian Pereira'

puts my_name
puts my_name, my_name, my_name

box = 'bananas'
puts box
box = 'apples'
puts box

my_favourite_number = 3
number_of_stooges = 3
number_of_witches_in_macbeth = 3

that_guy_over_there = 'Nick'
# Ruby associates a pointer with a variable name

# Array
groceries = %w[eggs milk cabbage]
puts groceries

# Hash (dictionary, key-value)
dictionary = {
  'like' => 'the opposite of dislike',
  'love' => 'the opposite of hate',
  'watching my brother dance recital' => 'opposite of a good time'
}

p dictionary
