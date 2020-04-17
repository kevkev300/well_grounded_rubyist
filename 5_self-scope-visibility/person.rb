class Person
  attr_accessor :first_name, :last_name, :middle_name

  # can do w/o "@" as there are instance method (using david as self)
  # that get defined by the accessor
  def whole_name
    n = first_name + " "
    n << "#{middle_name} " if middle_name
    n << last_name
  end
end

david = Person.new
david.first_name = "David"
david.last_name = "Black"

puts "Whole name: #{david.whole_name}"

david.middle_name = "Alan"

puts "New whole name #{david.whole_name}"
