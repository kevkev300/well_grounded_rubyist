class C
  puts "inside class def. Here is self:"
  p self
  @v = "Instance variable at the top level of class body"
  puts "Instance variable @v, belonging to #{self}:"
  p @v

  def show_var
    puts "Inside instance method, here is self:"
    p self
    puts "Instance variable @v, belonging to #{self}:"
    p @v
  end
end


puts "instantiating c:"
c = C.new
puts ""
puts ""
puts "calling method on c"
c.show_var
