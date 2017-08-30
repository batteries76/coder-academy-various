# Given a positive number n > 1 find the prime factor decomposition of n. The result will be a string with the following form :
#
#  "(p1**n1)(p2**n2)...(pk**nk)"
# with the p(i) in increasing order and n(i) empty if n(i) is 1.
#
# Example: n = 86240 should return "(2**5)(5)(7**2)(11)"
require 'pry'

@prime_arr = []
@prime_str = ""

def starter(n)
  @prime_arr = []
  @prime_str = ""
  mem_n = n
  counter = 2
  prime_factor(n)
  while counter<= mem_n
    if @prime_arr.count(counter)>0
      num_prime = @prime_arr.count(counter)
      if num_prime > 1
        @prime_str += "(#{counter}**#{num_prime})"
      else
        @prime_str += "(#{counter})"
      end
      @prime_arr.delete(counter)
    end
    counter+=1
  end
end

def prime_factor(n)
  if is_prime?(n)
    @prime_arr << n
    return
  else
    div = 2
    while (div<=n) do
      if is_prime?(div)
        if (n%div)== 0
  #        binding.pry
          @prime_arr << div
          return prime_factor(n/div)
        end
      end
      div += 1
    end
  end
end

def is_prime?(n)
  num_array = (1..(n**0.5)).select { |div| n % div == 0}
  if num_array.length == 2
    return true
  else
    return false
  end
end

binding.pry

# print @prime_arr
# puts
print @prime_str
puts
