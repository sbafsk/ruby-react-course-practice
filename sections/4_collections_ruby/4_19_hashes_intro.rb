# frozen_string_literal: true

# - Map keys representing people or things to an associated value
#   for each OR we can have a hash which represents a person (or thing)
#   and multiple key/value pairs representing different kinds of
#   information about that person.
# - We can nest Hashes inside arrays or vice versa, so we can have
#   a list of contacts, each of which is a hash.
# - We can also have a key in a hash which maps to a list/array.

# ---
# Hash (aka dictionary)
# maps key => values
# Dictionary: words => definitions
# Phone Book/Directory: names => phone numbers

# map a key representing a person or object to some piece
#  of information about them

prices = {
  'eggs' => 3.0,
  'milk' => 2.0,
  'bacon' => 5.0
}

p prices['eggs']

# Multiple fields of information about one person or thing

my_info = {
  'name' => 'Seba',
  'job' => 'Engineer',
  'likes it?' => true,
  'age' => 28
}

puts "I am #{my_info['age']} years old"

# Use symbols for keys (when it makes sense)
# name symbols like variables (snake_case)

contact_card = {
  name: 'Bruce Wayne',
  email_address: 'batman@batman.com',
  friends: %w[Juan Jose Pedro]
}

contact_card.default = 'Info not found.'

p contact_card[:name]
p contact_card['email_address'.to_sym]

# trying to access with a key that's not defined
#  returns default value (nil)

# Alternate syntax
contact_card_2 = {
  name: 'Alfred',
  email_address: 'alf@batman.com'
}

p contact_card_2[:name]

contacts = [contact_card, contact_card_2]

p contacts

p contacts[0][:friends][0]
