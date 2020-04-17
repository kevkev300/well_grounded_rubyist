class Car
  @@makes = []
  @@cars = {}
  @@total_count = 0
  attr_reader :make

  # accessor method to store the count in an instance variable of the class object
  # therefore, it's not shared to childs
  # but first start of by setting it to 0
  def self.better_count
    @better_count ||= 0
  end

  def self.better_count=(n)
    @better_count = n
  end

  def self.total_count
    @@total_count
  end

  def self.add_make(make)
    unless @@makes.include?(make)
      @@makes << make
      @@cars[make] = 0
    end
  end

  def initialize(make)
    if @@makes.include?(make)
      puts "Creating new #{make}"
      @make = make
      @@cars[make] += 1
      @@total_count += 1
    else
      raise "No such make: #{make}"
    end
  end

  def make_mates
    @@cars[self.make]
  end
end

Car.add_make("Honda")
Car.add_make("Ford")

h = Car.new("Honda")
f = Car.new("Ford")
h2 = Car.new("Honda")

puts ""

puts "Counting cars of same make as h2..."
puts "#{h2.make_mates}"

puts ""

puts "there are a total of #{Car.total_count} cars."

puts ""

puts "Creating non existing mate"
x = Car.new("Brand x")
