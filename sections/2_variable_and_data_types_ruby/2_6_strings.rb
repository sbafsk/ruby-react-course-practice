# frozen_string_literal: true

# - Combining strings using concatenation + and interpolation #{}
# - Single quotes don't support interpolation and escape sequences (e.g. `\n')
# - Using `gets` to get strings from the user, save them to variables, and use them for mad libs.

# ---

# puts "Cheese"
# funny_joke = "Cheese"
# puts funny_joke

first_name = 'Sebastian'
last_name = 'Pereira'

# print first_name
# print " "
# print last_name

# Concatenation +
# puts first_name + " " + last_name
full_name = "#{first_name} #{last_name}"
yoda_name = "#{last_name}, #{first_name}"

# Interpolation #{} only within double quotes
greeting = "Hi, my name is #{full_name}"
puts greeting

bond_greeting = "The name is #{last_name}, #{full_name}"
puts bond_greeting

# user input
# puts "What is your name?"
# user_name = gets.chomp
# p "Hello, #{user_name}."
# puts "Pleasure to make your acquaintance."

# Escape sequences
# \n - new liine
puts "this goes \n into a new line"
puts 'this doesnt goes \n into a new line'

# single quotes only support apostrophe \'
puts "hi i'm #{full_name}"
puts "hi i\'m #{full_name}"

# Mad lib
puts 'Give me a noun.'
noun = gets.chomp

puts 'Give me a verb.'
verb = gets.chomp

puts 'Give me an adverb'
adverb = gets.chomp

puts 'A country?'
country = gets.chomp

puts "A verb ending in 'ing'?"
ing_verb = gets.chomp

puts "My #{noun} went on holiday to #{country}, and while they were there, they saw a #{noun} #{ing_verb} another #{noun}, #{adverb}"
