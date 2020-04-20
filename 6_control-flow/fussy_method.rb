def fussy_method(x)
  raise ArgumentError, "I need a number under 10" unless x < 10
end

begin
  fussy_method(20)
rescue ArgumentError => e
  puts "That was not an acceptable number!"
  puts "Backtrace:"
  puts e.backtrace
  puts "Message:"
  puts e.message
end
