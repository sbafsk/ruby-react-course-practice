# frozen_string_literal: true

# - We saw that a method can't access a local varialbe that was
#   defined outside the method, or vice versa.
# - However, instance variables (with the @ sign) can be accessed in and out
#   of methods on the same object (so far, that's just <main>).
# - We can sometimes avoid having to increase the scope of a variable by passing it as an argument of a method call.
#   Then we have access to the value of that variable inside the method
#   (though the name of the method variable might be different).

# ---

def my_house
  dad = 'David'
end

def my_friend_house
  dad = 'Phil'
end

# p my_house
apples = 1
# instance variable
@bananas = 0

def pick_banana
  @bananas += 1
end

# pick_banana

# batman = batman # no error

bananas = 3

def tally_me_banana(fruit)
  puts "You've picked #{fruit} bananas"
end

tally_me_banana(bananas)

# bananas -> 23
# fruit -> bananas -> 23
# fruit -> 23

def whats_in_scope(passed_variable)
  puts 'I can see instance variables, like :'
  puts "@bananas: #{@bananas}"
  puts 'I can see my method variables:'
  puts "passed_variable #{passed_variable}"
  puts "But watch out, because I can't see
		local variables outside the method."
  puts dad
end

dad = 'Peter'
whats_in_scope(dad)
