# - We use true to represent a positive state (true/yes/on) and false to represent a negative state (false/no/off).
#   There is also nil, which represents an empty state.
# - We also see boolean values as the return values of comparison operators (==,!=,>,<,>=,<=)

# ---

# Boolean values:
# true
# false
# p "true"
# p "false"

it_is_sunny = true
i_have_a_cat = true

it_is_rainy = false

# false  switch   true

switch = false
# false <--switch   true

switch = true
# false  switch-->  true

fruit = "apple"
fruit = "banana"
fruit = nil
# p fruit
#nil => empty state

# comparisons (operators/method)
# compare two objects, and return true or false
#  based on their value
# == - equal? (not to be confused with =)

# puts 3 == 3.0 # true
# puts "Cowboy" == "cowboy" # false

# != different

different = ((3 * 2) != (2 * 3))
# puts different

# puts (7 / 2) != 3.5

# > , <, >=, <=
# puts 7 > 3
# puts 3 < 1
four_bigger_than_four =  4 > 4
# puts 4 >= 4
p four_bigger_than_four
