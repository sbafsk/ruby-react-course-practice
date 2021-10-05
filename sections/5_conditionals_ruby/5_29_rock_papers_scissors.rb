# - This was mainly an exercise in refactoring, where we have code
#   that works, but we want to make it easier to read and maintain.
# - We saw that we can clean up our if statement by using nested
#   conditionals, joining elsifs which have the same outcome by either
#   finding a condition that covers all of them, joining them together
#   with OR ||, or using case statements.
#   Finally, we saw that we can improve our code signigicantly by
#   using an object, in this case an array, to represent different
#   outcomes.

# ---
moves = ['rock', 'paper', 'scissors']

# get player move
print "pick your move \n"
p_move = gets.chomp
# p_move = moves.sample
puts "you played #{p_move}"

# get computer move
c_move = moves.sample
puts "computer played #{c_move}"

# see who won

# three possibilities
#  it's a tie
if p_move == c_move
  puts "It's a tie"
# user wins
elsif (p_move == 'rock' && c_move == 'scissors') || 
  (p_move == 'paper' && c_move == 'rock') ||
  (p_move == 'scissors' && c_move == 'paper')
    puts "user wins"
# computer wins
elsif (p_move == 'rock' && c_move == 'paper') ||
  (p_move == 'paper' && c_move == 'scissors') ||
  (p_move == 'scissors' && c_move == 'rock')
    puts "computer wins"
# unexpected input
else
  puts "unexpected input"
end

win_scenarios = [
  ['rock', 'scissors'],
  ['paper', 'rock'],
  ['scissors', 'paper']
]

lose_scenarios = [
  ['scissors', 'rock'],
  ['rock', 'paper'],
  ['paper', 'scissors']
]

this_game = [p_move, c_move]

if p_move == c_move
  puts "it's a tie"
elsif win_scenarios.include?(this_game)
  puts "user wins"
elsif lose_scenarios.include?(this_game)
  puts "computer wins"
else
  puts "unexpected input"
end