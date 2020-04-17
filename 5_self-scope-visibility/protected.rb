class C
  def initialize(n)
    @n = n
  end

  def compare(c)
    if c.n > n
      puts "The other object's n is bigger"
    else
      puts "The other object's n is equal or smaller"
    end
  end

  protected

  def n
    @n
  end
end

c1 = C.new(100)
c2 = C.new(200)

# as c1 and c2 are of C, c1 can ask c2 to execute n
c1.compare(c2)
