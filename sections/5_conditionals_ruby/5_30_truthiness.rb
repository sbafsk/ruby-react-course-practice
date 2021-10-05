# - We saw that all objects in Ruby are considered to be
#   either falsey (false, nil), or truthy (everything else).
# - I showed you how we can prevent a no method error by
#   doing a nil check.
# - We looked at conditional assignment, which lets us save
#   a new value into a variable or keep the old value if a
#   truthy values is already assigned.

# ---

# Using conditionals and booleans with non-boolean values

condition = true

if condition
  puts "it's truthy"
else 
  puts "it's falsey"
end

falsey_values = [nil, false]
truthy_values = "Everything else..."

baby_name = nil
baby_name = false
baby_name = "Frank"

puts "What about Robert" unless baby_name

baby_name = "Eudamononius"
# baby_name = nil

# Nil check to prevent error

if baby_name && baby_name.length >= 10
  puts "Isn't that kind of long?"
end

# Logical Short-circuiting
# check only as much of the expression as it needs to
# return the leftmost falsey value
# or the rightmost truthy value
puts("I'm being evaluated => falsey") && puts("right side being evaluated")
p("I'm being evaluated => truthy") && puts("right side being evaluated")


# OR ||
# return the leftmost truthy value
# or the rightmost falsey value
p("I need to check this => truthy") || puts("I only need to check this if the left side was false")



# conditional assignment
# We can assign a value to a variable, only if the variable
# is currently falsey (nil or false)
baby_name = nil
baby_name = baby_name || "Robert"
baby_name = baby_name || "Copernicus"
p baby_name

baby_name = nil
baby_name ||= "Balthasar"
p baby_name
