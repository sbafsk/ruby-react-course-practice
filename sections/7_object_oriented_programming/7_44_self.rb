# frozen_string_literal: true

# - Inside a class definition, `self` refers to the class.
#   Inside an instance method definition, `self` refers to the
#   instance that receives it (which menas that the value of self
#   is determined when the method is called, not when it is defined)
# - Outside of any class definitions, self refers to the main objets,
#   and when we call a mathod on main, self will still refer to main
#   (because main received the method call).
# - When we call a method without a receiver, the implicit receiver
#   is whatever object `self` currently points to. We can call methods
#   on self explicitly or implicitly (except when the method
#   is 'private'm like on main object)

puts self
# We're always on an object

# methods can be defined on the main object

def main_method
  puts self
end

main_method

# self.main_method # error

# self changes
class Hamburger
  puts self # self points to the class

  def self.jingle
    puts 'tomatoes pickles lettuce onion'
    puts self # self refers to the class
  end

  # self changes
  def initialize
    puts self # refers to the instance
  end

  def eat
    'MMMm good.'
  end

  def print_noise
    puts eat # we can call eat with or without a receiver
  end
end

Hamburger.new.print_noise

Hamburger.jingle
