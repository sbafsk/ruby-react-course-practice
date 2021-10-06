# - We saw that we've had a REPL (Read Evaluate Print Loop)
#   available to us all long.
# - We saw how we can use `while true` or `loop` to create an 
#   infinite loop, and use the `break` keyword to get out 
#   of the loop when we want.
# - We reviewed methods for parcing user input, and we saw how we
#   can create a specific syntax/grammar for the user to give
#   instruccions in.

# ---

# REPL Calculator

# Calculator: 
# add
# subtract
# multiply
# divide
# (2 numbers) binary function

# REPL
# Read
# Evaluate
# Print
# Loop

# while true do
#   print "> "
#   # p eval(gets.chop) # this is very dangerous
#   # all user input is either malicious or wrong
#   puts
# end

# Input format:
# <command> <arg1> <arg2>
# add 5 12
# multiply
# substract


def calculator
  loop do # same as `while true do`
    print '>'
    input = gets.chomp.split(' ')
    # p input
    command = input[0].downcase
    # arg1 = input[1].to_f
    # arg2 = input[2].to_f 
    # parallel assignment
    # arg1, arg2 = input[1].to_f, input[2].to_f 
    arg1, arg2 = input[1, 2].map! { |n| n.to_f}
    
    #p command, arg1, arg2
    case command
    when "q"
      break
    when "add", "sum", "plus"
      puts arg1 + arg2
    when "multiply", "product", "*", "times"
      puts arg1 * arg2
    when "substract", "minus", "difference", "-"
      puts arg1 - arg2
    when "divide", "/"
      puts arg1 / arg2
    else 
      puts "I don't understand that."
    end
    puts 
  end
  puts "goodbye"
end

# calculator

# Exercise
# Rewrite calculator to take 

def calculator_v2
  loop do # same as `while true do`
    print '>'
    input = gets.chomp.split(' ') 
      
    command = input[1].downcase
    # arg1, arg2 = input[0..-1].map! { |n| n.to_f}
    arg1 = input[0].to_f
    arg2 = input[2].to_f
    
    puts command, arg1, arg2
    case command
    when "q"
      break
    when "add", "sum", "plus", "+"
      puts arg1 + arg2
    when "multiply", "product", "*", "times"
      puts arg1 * arg2
    when "substract", "minus", "difference", "-"
      puts arg1 - arg2
    when "divide", "/"
      puts arg1 / arg2
    else 
      puts "I don't understand that."
    end
    puts 
  end
  puts "goodbye"
end

calculator_v2