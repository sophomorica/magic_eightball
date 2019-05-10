require "pry"
require "colorize"


@arr = [1,4,11,38,29,101,88,64, 1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,102,98,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33]

@arr_even = []
@arr_odd = []
def even_odd
 @arr.each do |x| 
  if x % 2 == 0
    @arr_even << x
  else 
    @arr_odd << x
  end 
end 
print `clear`
seperator
puts "\n    These are even #{@arr_even.sort}\n".colorize(:blue)
puts "     These are odd #{@arr_odd.sort}\n".colorize(:green)
seperator
end 

def seperator
  puts "\n\n"
  puts "(*)".colorize(:yellow) *40
  puts "\n\n"
end
even_odd


