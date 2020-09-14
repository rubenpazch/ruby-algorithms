#!/bin/ruby

require 'json'
require 'stringio'

# Complete the beautifulTriplets function below.
def beautifulTriplets(d, arr)
  len = arr.length 
  count = 0
  i = 0
  while i< len 
    j = 0
    while j < len
      k= 0
      while k < len 
        if isBeatufull(i,j,k,d,arr) 
          count += 1
        end
        k += 1
      end
      k=0
      j += 1 
    end
    j=0
    i += 1
  end
  count
end

def isBeatufull(i,j,k,d,arr) 
  a = arr[j] - arr[i]
  b = arr[k] - arr[j]
  
  return a==b && a==d
end



fptr = File.open(ENV['OUTPUT_PATH'], 'w')

nd = gets.rstrip.split

n = nd[0].to_i

d = nd[1].to_i

arr = gets.rstrip.split(' ').map(&:to_i)

result = beautifulTriplets d, arr

fptr.write result
fptr.write "\n"

fptr.close()
