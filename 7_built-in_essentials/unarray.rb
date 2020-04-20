def combine_names(first, last)
  first + " " + last
end

names = ["Kevin", "Liebholz"]
puts combine_names(*names)
