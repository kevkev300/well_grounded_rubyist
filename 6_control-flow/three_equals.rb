class Ticket
  attr_accessor :venue

  def initialize(venue)
    self.venue = venue
  end

  # can decide what case statement checks fo this class!
  def ===(other_ticket)
    self.venue == other_ticket.venue
  end
end

def compare(a, b)
  case a
  when b then puts "Same location!"
  else puts "No match"
  end
end

t1 = Ticket.new("Townhall")
t2 = Ticket.new("Townhall")
t3 = Ticket.new("Park")

puts "Comparing t1 and t2"
compare(t1, t2)

puts ""

puts "Comparing t1 and t3"
compare(t1, t3)
