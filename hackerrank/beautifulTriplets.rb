#!/bin/ruby

require 'json'
require 'stringio'

# Complete the beautifulTriplets function below.
def beautifulTriplets(d, arr)
  len = arr.length
  count = 0
  i = 0
  while i < len
    j = 0
    while j < len
      k = 0
      while k < len
        count += 1 if isBeatufull(i, j, k, d, arr)
        k += 1
      end
      k = 0
      j += 1
    end
    j = 0
    i += 1
  end
  count
end

def isBeatufull(i, j, k, d, arr)
  a = arr[j] - arr[i]
  b = arr[k] - arr[j]

  a == b && a == d
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

nd = gets.rstrip.split

n = nd[0].to_i

d = nd[1].to_i

arr = gets.rstrip.split(' ').map(&:to_i)

result = beautifulTriplets d, arr

fptr.write result
fptr.write "\n"

fptr.close

# arr = [1,2,4,5,7,8,10]
#
#
#
# p [arr[0] + 3] - arr === [] && [arr[0] + 2 * 3] - arr === []  # [4] -   [1,2,4,5,7,8,10]  = [7]
# p [arr[1] + 3] - arr === [] && [arr[1] + 2 * 3] - arr === []  # [5] -   [1,2,4,5,7,8,10]  = [8]
# p [arr[2] + 3] - arr === [] && [arr[2] + 2 * 3] - arr === []  # [7] -   [1,2,4,5,7,8,10]  = [10]
# p [arr[3] + 3] - arr === [] && [arr[3] + 2 * 3] - arr === []  # [8] -   [1,2,4,5,7,8,10]  = [11]
# p [arr[4] + 3] - arr === [] && [arr[4] + 2 * 3] - arr === []  # [10] -  [1,2,4,5,7,8,10]  = [13]
# p [arr[5] + 3] - arr === [] && [arr[5] + 2 * 3] - arr === []  # [11] -  [1,2,4,5,7,8,10]  = [14]
#
#
#
# (0...arr.length- 1).each  do |r|
#  p r
# end

arr = [1, 6, 7, 7, 8, 10, 12, 13, 14, 19]
p [4] - arr
p [arr[0] + 3] - arr === [] && [arr[0] + 2 * 3] - arr === [] # [4] -   [1,2,4,5,7,8,10]  = [7]
p [arr[1] + 3] - arr === [] && [arr[1] + 2 * 3] - arr === [] # [5] -   [1,2,4,5,7,8,10]  = [8]
p [arr[2] + 3] - arr === [] && [arr[2] + 2 * 3] - arr === [] # [7] -   [1,2,4,5,7,8,10]  = [10]
p [arr[3] + 3] - arr === [] && [arr[3] + 2 * 3] - arr === [] # [8] -   [1,2,4,5,7,8,10]  = [11]
p [arr[4] + 3] - arr === [] && [arr[4] + 2 * 3] - arr === [] # [10] -  [1,2,4,5,7,8,10]  = [13]
p [arr[5] + 3] - arr === [] && [arr[5] + 2 * 3] - arr === [] # [11] -  [1,2,4,5,7,8,10]  = [14]
p [arr[6] + 3] - arr === [] && [arr[6] + 2 * 3] - arr === [] # [8] -   [1,2,4,5,7,8,10]  = [11]
p [arr[7] + 3] - arr === [] && [arr[7] + 2 * 3] - arr === [] # [10] -  [1,2,4,5,7,8,10]  = [13]
p [arr[8] + 3] - arr === [] && [arr[8] + 2 * 3] - arr === [] # [11] -  [1,2,4,5,7,8,10]  = [14]

p arr
