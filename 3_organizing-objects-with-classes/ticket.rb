class Ticket
  def event
    puts "unspecified"
  end

  def set_price(price)
    @price = price
  end

  def get_price
    puts @price
  end
end

ticket = Ticket.new
ticket.event

ticket.set_price(5)
ticket.get_price
