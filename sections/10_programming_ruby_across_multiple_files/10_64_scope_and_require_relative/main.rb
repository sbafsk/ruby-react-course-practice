# frozen_string_literal: true

# - Local variables do not survive after a require_relative call,
#   but instance variables, methods, and constant do.
# - At the top level, `self` isthe "main" object. If we require a
# file, the other file will have the same main object.
# - Since both files are dealing with the same main object and the
# same classes, it doesn't matter what file a method was defined in.

require_relative 'other'

puts @test_var

greeting

puts self
