puts "Reading Celsiuus temperature value from data file..."
celsius = File.read("temp.dat").to_i
fahrenheit = (celsius.to_i * 9 / 5) + 32
puts "The celsius number is #{celsius}"
puts "The fahrenheit equivalent is: #{fahrenheit}."
