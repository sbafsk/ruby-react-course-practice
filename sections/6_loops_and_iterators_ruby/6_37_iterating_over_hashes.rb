# - When we call #each on a hash, we pass it a block with two block
#   variables {|key, value|}
#   If we want to iterate over just the keys, or just the values, we use
#   #each_key, or #each_value
# - Because hashes are ordered, except in older versions of Ruby (<1.9),
#   we can also use #each_with_index, in which case we wrap our first
#   two block arguments in parentheses like this: {|(key,value), index|}

# ---
# Iterators can be called on 
# Arrays
# Ranges

# each 
# each_winth_index
# map
# reduce/inject
# select

# Hashes

sidekicks = {
  "batman" => "robin",
  "superman" => "jimmy olsen",
  "captain america" => "bucky",
  "conan" => "andy reach",
}

#each/each_pair
sidekicks.each do |hero, sidekick|
  puts "#{sidekick} is the sidekick of #{hero}."
end

sidekicks.each do |pair|
  p pair
end

sidekicks.each_key do |hero|
  puts "#{hero} works alone."
end

sidekicks.each_value do |sidekick|
  puts "#{sidekick} works alone."
end

# in older versions of Ruby, hashes are unordered
# since Ruby 1.9, hashes have been ordered

sidekicks.each_with_index do |(hero, sidekick), index|
  puts "#{index +1 }. #{hero} and #{sidekick} to the rescue!"
end

p(sidekicks.select do |hero, sidekick|
    hero.length > sidekick.length
end)

p(sidekicks.reject do |hero, sidekick|
    hero.length > sidekick.length
end)

book_names = sidekicks.map do |hero, sidekick|
  "#{hero} & #{sidekick} movie"
end

p book_names