# - We saw that we can repeatedly run a piece of code using while
#   and until loops.
# - A while loop runs its code as long as the condition is true, and
#   exist after it becomes false, An Until loop checks that the 
#   condition is false, and stops after it becomes true
# - We have to watch out for off-by-one errors (pat attention to the
#   control flow of the loop) and infinite loops (remember to 
#   increment, make sure your condition will eventually become false)

# ---

# Repetitive Task:

# While loop
counter = 0

while (counter < 10) do
  puts counter
  counter += 1
end

puts "after the loop, counter = #{counter}"

# off by one errors:

numbers = [0, 1, 2, 3, 4, 5]

index = 0
while index < numbers.length do
  puts numbers[index]
  index += 1
end

# Until :
# the same as while loop,
# checking that the condition is false

# until (condition) do
# while (!condition) do

bananas = 0

until bananas >= 100
  bunch = rand(10)
  bananas += bunch 
  puts "i have #{bananas} bananas"
end

# While Loops
# run while a condition is true

# Until Loops
# run until a condition is true
# (while a condition is false)

# Gotchas :
# Off by one errors
# All loops will terminate
