array = [1, 2, 3, 4, 5]
def sum_of_loop(array)
  temp = []
  array.each do |number|
    temp = number += number
  end
  temp
end

total = array.sum
puts "The sum is #{total}"
