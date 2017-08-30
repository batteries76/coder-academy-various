def call_block1
  puts "in the method"
  yield
  yield
  puts "in the method2"
end

call_block1 { puts "in the block" }
puts

def blocker
  if block_given?
    yield
  else
    puts "No block given"
  end
end
blocker
blocker {puts "block woz 'ere"}
blocker do puts "huh uhuh huh" end

puts

a = 8

8.times do |x, y, z, q, t=9; a, b|
  puts x
  puts t
  puts a
  a = x
  b = x
end
