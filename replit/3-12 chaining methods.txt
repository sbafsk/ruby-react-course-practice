# - We can call object methods on the return value,
#   which looks like object.method_one.method_two
# - We can pass the return value of a method as an argument
#   for another method: method_two(method_one(object))
# - And we can combine these:
#   method_two(object.method_one) or
#   method_one(object).method_two

# Chaining Methods
# Calling methods right after each other:

# Return value:

"Suffer Dude".swapcase # "sUFFER dUDE"

def square_sum(x, y)
	x**2 + y**2
end

square_sum(10, 20) # 500

return_value = square_sum(15, 20)
other_return_value = "Bob Dylan".downcase

# Pass the return value as an argument
# Call a method on the return value

puts(return_value)

other_return_value.reverse

# Chaining (Skipping the assignment step)

"cool guy".reverse.upcase.insert(4, "oooo")

puts (square_sum(2, square_sum(3, 2)))

"Rebel Yell".insert(3, "Batman".reverse).upcase

puts "enter the code word"
input = gets.chomp.strip.downcase
# chomp remove new line
# stript remove white spaces
p input






