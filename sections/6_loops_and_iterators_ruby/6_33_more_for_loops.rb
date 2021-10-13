# frozen_string_literal: true

# - We saw that iterators work just like for loops, except that they
#   are methods: instead of taking arguments between parentheses,
#   they take a block of code with either {...} or do...end
# - Depending on what iterator method we use, it will do
#   something a bit different with the block.
# - We looked at #each, which executes the block once for each item
#   in the array (just like a for loop), and #each_with_index, which lets
#   us assing a block variable to each element and its index, so that
#   we can change the array in place.

# For loops:

object = %w[stuff that lives in array]

object.each do |i|
  puts i.upcase
end

# puts i # still alive with last value

# Iterator (type of method)
# each

object.each do |thing|
  puts thing.reverse
end

# puts thing # its dead

# Scope (variables just mean something in a particular context/
#         part of the program)

object.each { |_element| puts 'element' * 2 }

# Change the values in the array

(0...object.length).each do |i|
  object[i] = "evil #{object[i]}"
end

p object

dinosaurs = %w[
  brachiosaur
  brontosaurus
  t-rex
  raptor
]

dinosaurs.each_with_index do |dinosaur, i|
  dinosaurs[i] = "awesome #{dinosaur}"
end

p dinosaurs

# An iterator is a method that takes a block

p dinosaurs.include?('t-rex')

# a block : {} (one line block), do...end (multiline block)
p dinosaurs.each {}

# if your each isn't working, did you pass it a block?
p dinosaurs.each
