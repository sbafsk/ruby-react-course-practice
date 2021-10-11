require 'colorize'

puts "Hello".red
puts "Hello".colorize(:red)

String.colors.each do |color|
  puts color.to_s.colorize(color)
end