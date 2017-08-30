require 'pry'

arr = (1..100).to_a

arr.each_with_index do |elem, i|
  arr[i] = true
end

def toggle(bool)
  if bool
    bool = false
  else
    bool = true
  end
  bool
end

counter = 1

100.times do
  arr.each_with_index do |elem, i|
    if (i+1) % counter == 0
      arr[i] = toggle(elem)
    end
  end
  counter += 1
end

arr.each_with_index do |elem, i|
  if elem
    puts "The student in seat number #{i+1} has a hat on"
  else
    puts "The student at seat #{i+1} has a hat OFF"
  end
end
