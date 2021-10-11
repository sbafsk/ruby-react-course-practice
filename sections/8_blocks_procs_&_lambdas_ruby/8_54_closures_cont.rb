=begin
- Just like with our example, we saw that we can keep a local
variable alive by exporting a proc from the method scope.
- Once again, when we run the method more that once, the 
`string_builder` proc we make each time will have access to 
its own copy of the `string` variable.
=end

def strings_builder_builder
  string = ''
  proc {|other_string| string << other_string}  
end

string_builder = strings_builder_builder()

string_builder.call("cowboy")

p string_builder.call("robot")

p string_builder.call("lalala")

string_builder_2 = strings_builder_builder()

p string_builder_2.call("uhlala")
p string_builder_2.call("parrot")

p string_builder.call(" BACK")