# - We can make a line of code a conditional by putting 
#   `if <condition>` at the end. We often use this with an early return.
# - We can use the ternary operator for if-else statements
# - We can streamline our code code even more if we
#   understand that conditionals in Ruby are expressions.
#   e.g `x > y ? x : y` evaluates to x when x is bigger and to y otherwise.

# ---

box = "bananas"

# if box == "bananas"
#   puts "my bananas have arrived!"
# end

# puts "my bananas have arrived!" if box == "bananas"

def check_for_bananas(box)
  return false if box != "bananas"
  puts "my bananas have arrived!" 
end  

check_for_bananas(box)


# def max(x,y)
#   if x > y
#     x
#   else 
#     y
#   end
# end

# Ternary Operator/Expression
def max(x, y)
  x > y ? x : y
end

puts max(12, 7)
puts max(15, 17)


# def who_wins(player_score, computer_score)
#   if player_score > computer_score
#     puts "you win"
#   else  
#     puts "you lose"
#   end
# end

# def who_wins(player_score, computer_score)
#   puts(if player_score > computer_score
#     "you win"
#   else  
#     "you lose"
#   end)
# end

# def who_wins(player_score, computer_score)
#   player_score > computer_score ? puts("you win") : puts("you lose")
# end

def who_wins(player_score, computer_score)
  puts "you #{player_score > computer_score ? "win" : "lose"}"
end

who_wins(42, 0)
