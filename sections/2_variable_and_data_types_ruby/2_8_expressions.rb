# - If we assign sum=(x+y), and then re-assign x or y, `sum` does not change,
#   because variables hold objects, not expressions.
# - Expressions are chunks of code that Ruby evaluates, 
#   they include objects, and evaluate to an objects.
# - The Ruby interpreter evaluates expressions in a specific order determined by its order of operations,
#   but we can make the interpreter evaluate an expressions first by wrapping it in aprentheses ().

# ---

# how re-assignment of a varialbe effects other variables
# Does it?

x = 7
y = 11
sum = x + y # 18

# puts sum # 18

x = 5

# puts x + y # 16

# puts sum # 18

# 'sum' does not track current value of x or yield

# Expression:
# Something Ruby evaluates
# Comes out ot a specific value
# Anything we can wrap in parentheses ( )

4 + 5

35
(2 + 
3)
#(p ("I'm on two 
	# lines"))

# Order of operatios:
# ( ) Parentheses can override the order of operatios

# (p ((23 + (12 * 8)) - 9 ))
# assignment_result = (print_result = (p (23 + 12) * (8 - 9)))

result = (23 + 12 * 8 - 9)
# p result 

first_name = "James"
last_name = "Bond"

full_name = first_name + last_name

p full_name

first_name = "Dwayne"

p first_name + last_name

p full_name

# Value -> Object
