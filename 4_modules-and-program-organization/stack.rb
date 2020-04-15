require_relative "stacklike"

class Stack
  include Stacklike
end

s = Stack.new

s.add_to_stack("item one")
s.add_to_stack("item two")

p s.stack

taken = s.take_from_stack

p taken
p s.stack
