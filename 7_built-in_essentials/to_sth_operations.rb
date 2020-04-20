class Person
  attr_accessor :name, :age

  # will be used when an instance of Person gets "added" to a strin
  def to_str
    name
  end

  # will be used when an instance of Person needs to act as an array
  def to_ary
    [name, age]
  end
end

kev = Person.new
kev.name = "Kevin"
kev.age = 26
puts "kev's name is " + kev + " ."

array = []
array.concat(kev)
p array
