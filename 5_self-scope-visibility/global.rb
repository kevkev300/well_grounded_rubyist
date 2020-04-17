$gvar = "$global"
gvar2 = "global"

class C
  def examine_global
    puts "$gvar is #{$gvar}"
    puts "gvar is #{gvar}"
  end
end

C.new.examine_global
