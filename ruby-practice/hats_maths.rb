require 'pry'

# inital state is open
# all primes will be open
# all even factored numbers will be open
# but all sqaure numbers will be closed

final_array = []
(1..100).each do |num|
  num_array = (1..num).select { |n| num % n == 0}
  if num_array.length % 2 != 0
    final_array.push(num)
  end
end

# binding.pry
