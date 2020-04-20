class Array
  def my_each
    c = 0
    until c == size
      yield(self[c])
      c += 1
    end
    self
  end

  def my_map
    c = 0
    acc = []
    my_each { |e| acc << yield(e) }
    acc
  end
end

names = ["David", "Alan", "Black"]
new_names = names.my_map { |name| name.upcase }
p new_names
