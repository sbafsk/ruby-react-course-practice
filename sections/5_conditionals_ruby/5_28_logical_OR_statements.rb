# frozen_string_literal: true

# - The Logical OR is inclusive, which means `(p||q)` is true when
#   both sides of the expression are true.
# - We looked at examples of situations where someone get
#   a benefit or a penalty if they satisfy even one of the conditions
# - We saw that we can use comparisons (>, ==, ...) to get a
#   boolean value and insert it into an OR expression.

# ---

# Logical AND &&
# p && q
# only true whe p is true AND q is true
# when both sides are true

# Logical OR ||
# less strict
# p || q
# true as long as p is true OR q is true
# true, except when both sides are false

# Hotel Policy:
# If you have a cat or a dog staying with you,
# you have to pay a pet deposit

has_a_dog = false
has_a_cat = true

# puts "do you have to pay the deposit"
pet_deposit = (has_a_dog || has_a_cat)
# p pet_deposit

puts 'Welcome to the museum.'
puts 'If you are a studen or a senior, you may pay a discounted rate.'

puts 'do you have student_id?'

input = gets.chomp
# if input == "yes"
#   student = true
# else
#   student = false
# end
student = input == 'yes'

puts 'How old are you?'
age = gets.chomp.to_i
senior = age >= 65

puts 'Do you get the discount...'

discount = (student || senior)

# puts "YES!" if discount
# puts "NO!" if !discount

puts(discount ? 'YES!' : 'NO')
