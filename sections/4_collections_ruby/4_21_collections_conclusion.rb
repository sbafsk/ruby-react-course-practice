# - Showed how to get random numbers with the Kernel method
#   #rand(max) and array#sample
# - Reviewed the difference between #shuffle (returns a copy)
#   and #shuffle! (changes the array.) (#pop always change
#   the array, methods only have ! when there is a safe version)
# - Refactor code by replacing "magic numbers" with descriptive
#   variable names and putting repeated code into
#   methods (Don't repeat Yourself)

# Random numbers
# p rand(10) # give a max as an arg

# If we want someone to always win:
# we just need to choose one of our players
# (raffle style)

# If we want a number that our players have to match
# there might not be any winner
# (lottery style)

def shuffle_and_pop(array)
  array.shuffle!.pop  # use `!` to mutate the array
end

players = ["Duncan", "Kevan", "Tara", "Bobby", "Jane"]
# winner = players[rand(players.length)] # 0 < x < 5
# vvv does the same as ^^^
winner = players.sample

# puts "And the winner is ... #{winner}!"

# players = { 
#   3 => "Duncan",
#   5 => "Kevan",
#   8 => "Tara",
#   4 => "Bobby",
#   1 => "Jane"
# }

# players.default = "nobody"

# winning_number = rand(10) + 1 # 1 <= x <= 10
# winner = players[winning_number]

# puts "And the winner is #{winner}"

winner = shuffle_and_pop(players) # use `!` to mutate the array
# p players.include?(winner) # should return false

puts "And te winner is ... #{winner}!"

runner_up = shuffle_and_pop(players)

puts "And the runner up prize goes to ... #{runner_up}!"

p players 

# Refactoring
# - replace magic numbers with well name variables
# - put repeated code in methods
# - Don't Repeat Yourseld (DRY code)