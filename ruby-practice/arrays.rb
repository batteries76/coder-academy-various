require 'pry'

arr1 = ['cat', 'dog', 'fish']
arr2 = [1, 2, 3]
arr3 = [5, 10, 15]
arr4 = ['purple', 'monkey', 'dishwasher']

def array_run(arr)
  arr.each do |x|
    puts x
  end
end

binding.pry
