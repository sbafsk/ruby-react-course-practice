# - I talked about the idea that what "AND" really means when we use it to 
#   join two statements (A && B) is that A is true AND B is true.
# - We use && when we need to specify a strict condition which has two
#   parts, which must both be satisfied. e.g "patrons must be over 19
#   AND Patrons must have valid ID"
# - But what Boolean logis lets us do is replace these kinds of statements
#   with symbols and the do operations on them without worrying about 
#   what they mean. We can look at && as an arithmetic operation and just
#   memorize the truth table like we can memorize a multiplication table.

# ---

# AND &&
# Statement - true or false

# It is raining
raining = true

# I am wearing a raincoat
wearing_raincoat = true

# It is raining AND I am wearing a raincoat

# AND joins two statements
# AND means that both statements are true

p (raining && wearing_raincoat) # true

# what if it stops raining?
raining = false
p (raining && wearing_raincoat) # false

#Truth table:
puts "AND &&"
puts "true && true   | true"
puts "true && false  | false"
puts "false && true  | false"
puts "false && false | false"

logged_in = true
admin = false

# strict condition
if (logged_in && admin)
  puts "Access granted"
else
  puts "Access denied"
end

# We can ignore all that
# Think about it like math
# George Boole (Irish mathematician)

# true = 1
# false = 0
# AND = *

#Truth table:
puts "AND && - Multiplication"
puts "1 * 1  | 1"
puts "1 * 0  | 0"
puts "0 * 1  | 0"
puts "0 * 0  | 0"

puts "x * 1 = x"
puts "x * 0 = 0"

puts "x && true = x"
puts "x && false = false"

x = 42
(1 * x) # x
(0 * x) # 0

(true && x) # x
(false && x) # false
