obj = Object.new

# require exact amount of argument
def obj.one_arg(x)
  puts "I require exactley one argument"
end

# allow any number of arguments in an array x (or c below)
def obj.multi_args(*x)
  puts "I can take 0 or more args"
end

def obj.two_or_more(a, b, *c)
  puts "I can take 2 or more args"
  p a, b, c
end

obj.two_or_more(1, 2, 3, 4, 5, 6)

# give default value when not given any other
def default_args(a, b, c=1)
  puts "with default"
  p a, b, c
end

default_args(3, 2)
default_args(4, 5, 6)

# show priority
def args_unleashed(a, b = 1, *c, d, e)
  puts "Unleahsed arguments:"
  p a, b, c, d, e
end

args_unleashed(1, 2, 3, 4, 5)
args_unleashed(1, 2, 3, 4)
args_unleashed(1, 2, 3, 4, 5, 6, 7, 8)
args_unleashed(1, 2)

