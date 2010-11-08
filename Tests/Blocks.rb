# Need to test out block type stuff, classes, etc.
# These should all fold properly and be grouped in
# the navigator in a logical way!


class Klass
  p "hey"
end

module MrModule
  p "mod"
end

def a_method(arg, &blck)

end

def b_method arg, &blck

end

puts "one liner" if x == 2

if x == 1 then
  p "hi"
elsif y == 2 
  p "hello"
else
  p "nooo"
end

unless a_method(1) == "hello"
  p "hey"
end

a_method(1) do

end
a_method(2) {|i| p "hi #{i}"}

# shouldn't eat the constants!
Klass do |x, y|
  puts x, y
end
Klass { p "hey" }

# An exception block
begin

rescue StandardError => e

rescue 

ensure

else

end


