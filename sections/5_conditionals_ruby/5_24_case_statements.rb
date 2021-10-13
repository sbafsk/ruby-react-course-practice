# frozen_string_literal: true

# - We refactored our if-elsif-elsif-else statement which checked the
#   value of our user's input to use the case statement.
#   `case door_number; when "1", when "2",etc`
# - We saw how the case statement can check if an expression
#   matches any of a set of values using a comma.
# - We looked at ways to manipulate a string a user gives us to get
#   rid of irrelevant differences using #chomp to delete a new line \n
#   at the end, #strip to get rid of trailing white space, and
#   #downcase or #upcase to ignore capitalization.

puts 'You enter a room with 3 doors, Which do you go through?'
puts 'Enter door number:'

# door_number = gets.chomp.to_i
door_number = gets.chomp.strip.downcase

# multiple elsif
# if door_number == 1
#   puts "door 1"
# elsif door_number == 2
#   puts "door 2"
# elsif door_number == 3
#   puts "door 3"
# else
#   puts "Doors available 1, 2 and 3."
# end

case door_number
when '1', 'one'
  puts 'door 1'
when '2', 'two'
  puts 'door 2'
when '3', 'three'
  puts 'door 3'
else
  puts 'Doors available 1, 2 and 3.'
end
