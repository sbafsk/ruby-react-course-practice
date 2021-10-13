# frozen_string_literal: true

# - When we want to do something for each item in an array,
#   or a set number of times, we can use a for loop.
# - We can use for loops with arrays, or with ranges. Ranges
#   use two dots to include the endpoint and three to exclude
#   the endpoint. (1..10)
# - We need to use a range so we can access array members
#   by index if we want to actually change the array.

# ---

# Go through an array

index = 0
array = ['random', 'stuff', 'for', 123, 'print']

while index < array.length
  puts array[index]
  index += 2
end

# For loop
array.each do |item|
  puts item
end

# change the array

# bad
# for item in array do
#   item = item * 2
# end

# Ranges
1..10 # includes endpoint
1...10 # doesn't includes endpoint

p array
# use index to mutate array
(0...array.length).each do |i|
  array[i] *= 2
end

p array
