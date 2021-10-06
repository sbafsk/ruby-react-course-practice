# - The #map method takes a block, and applies that block to each
#   member of a collection in turn, whateve value comes back goes
#   in the corresponding place in the new array to be returned.
# - We saw how we can do the same thing using #each, but that
#   #map is nicer.
# - As we saw at the end, we can use #map! to change an array 
#   'in place', but we can only call it on an array, because Ruby doesn't
#   let us foce another type of objects (e.g a range) to change type.

# ---

# Iterators
# each / each_with_index
# array
# range

bad_guys = [
  'dath vader',
  'biff tannen',
  'maleficient',
  'regina george'
]

opinion_about_bad_guys = []

# Mapping an array to a new array
# keep the original array the same 
# have a new array, where each element correspons
# to somethign in the old array

bad_guys.each do |villian|
  opinion = "#{villian} is real bad news."
  puts opinion
  opinion_about_bad_guys << opinion
end

p opinion_about_bad_guys

one_to_ten = (1..10)

squares = []

one_to_ten.each { |number| squares << number**2 }

puts one_to_ten
puts squares

# map method
cubes = one_to_ten.map { |n| n**3 }
p cubes
p one_to_ten

# map! - mutate the original array
# returns the original array, after is's been changed.
one_to_ten = one_to_ten.to_a

one_to_ten.map! { |n| n**3 }
p one_to_ten
