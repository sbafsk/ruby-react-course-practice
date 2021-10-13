# frozen_string_literal: true

# - These "filtering methods are for when we are only interested in some
#   subset of an array, or want to know something general about the members
#   of the array. They take a block which is expected to return true or false.
# - #select and #reject return a sub-array, #find/#detect returns a single
#   object, #any?/#all? return a boolean.
# - #select and #reject run the block for every member of the collection,
#   but retunr a different lenght array. #find/#detect just goes throught till it
#   finds a match. #any?/#all? check each element until
#   they get true/false respectively.

# Iterators for filtering data

numbers = [1222, 320, 434, 123, 1424, 424, 157, 6345]

# Iterators :
# take a block
# execute the block for each member of the array
# select is an iterator

numbers.map(&:odd?)

odds = numbers.select(&:odd?) # select has ! dangerous method
evens = numbers.reject(&:odd?) # reject too

p odds, evens

# iterators execute the block for each element of the object
# sometimes they stop early

p (1..10).any? do |n|
  puts n
  n.odd?
end

doubles = (1..10).map { |n| n * 2 }

p doubles.all?(&:even?)

doubles.all? do |n|
  puts n
  n.even?
end

# check divisibility by 7
# use % (gives us the remainder)
(1..10).any? do |n|
  (n % 7).zero? # returns true
  puts n # returns nil
  p(n) # returns n (truthy)
end

# select
# get all the members for which { block } evaluates true

# detect AKA find
# get the first member for which block is true

# methods alias
p 'f'
puts(1..30).find { |n| (n % 7).zero? }
p 'd'
puts(1..30).detect { |n| (n % 7).zero? }
p 's'
puts(1..30).select { |n| (n % 7).zero? }
