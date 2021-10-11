=begin
- require_relative is a Kernel method which runs the code in another
Ruby file. It takes the relative path to the other file
as an argument.
- require_relative runs the code in the other file and returns
true if the require was successful.
- if you have try to require the same file again, require_relative
  will not run the code again, and will return false.
=end

puts "main"
p require_relative 'other'
puts "back in main"
puts
puts "what happens if we require again"
# you can only require once
p require_relative 'other' # doesn't work
