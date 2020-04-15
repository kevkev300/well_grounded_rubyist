class Ticket
  VENUES = ["Convention Center", "Fairgrounds", "Townhall"]

  # accessible from inside class
  def initialize(venue)
    if VENUES.include?(venue)
      @venue = venue
    else
      raise ArgumentError, "Unknown venue #{venue}"
    end
  end
end

t = Ticket.new("Townhall")
p t

# c = Ticket.new("Center")

# access constant from outside class
puts "The venues are #{Ticket::VENUES}."
