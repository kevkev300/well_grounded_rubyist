class Array
  def my_each
    c = 0
    until c == size
      yield(self[c])
      c += 1
    end
    self
  end
end

[1, 2, 3, 4, 5].my_each { |e| puts "I'm on element #{e}" }
