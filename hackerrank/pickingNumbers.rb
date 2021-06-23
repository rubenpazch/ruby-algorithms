# a = [1, 1, 2, 2, 4, 4, 5, 5, 5]   #1,2,4,5
#
# a = [4, 6, 5, 3, 3, 1]  # 1,3,4,5,6
#
# c = [1, 2, 2, 3, 1, 2]   1,2,3

filter_array = a.uniq.sort

hash = {}
a.each { |x| hash.store(x, 0) }

a.each do |x|
  hash[x] = hash[x] + 1 if hash.has_key?(x)
end

hashFrecuency = {}
i = 0

filter_array.each do |y|
  filter_array.each do |z|
    hashFrecuency.store(i, [y, z]) if (y - z).abs == 1 || (y - z).abs == 0
  end
  i += 1
end

hashFrecuency.delete_if { |_k, v| v[0] == v[1] }

max = 0
hashFrecuency.each do |k, v|
  p "#{k}  ->  #{v[0]} #{v[1]} "
  value_a = hash.fetch(v[0])
  value_b = hash.fetch(v[1])

  max = value_a + value_b if (value_a + value_b) > max
end

p max

# p hash
# p hashFrecuency

# !/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'pickingNumbers' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY a as parameter.
#
# def counterKey(arr)
#   filter_array = arr.uniq.sort
#   hash_sum = Hash.new
#   arr.each{|x| hash_sum.store(x,0)}
#   arr.each do |t|
#     if hash_sum.has_key?(t)
#       hash_sum[t] =  hash_sum[t] + 1
#     end
#   end
#   return hash_sum
# end
#
# def getFrecuency(arr)
#   filter_array = arr.uniq.sort
#   hash  = Hash.new
#   i = 0
#   # [1,2,3,4,5] [1,2,3,4,5]
#   filter_array.each do |y|
#     filter_array.each do |z|
#       if (y-z).abs == 1 || (y-z).abs == 0
#         hash.store(i, [y,z])
#       end
#     end
#     i = i +1
#   end
#   return hash.delete_if{|k,v| v[0] == v[1]}
# end
#
# def pickingNumbers(a)
#     # Write your code here
#     hash_frecuency = getFrecuency(a)
#     hash_sum = counterKey(a)
#     max = 0
#     #[0,1]
#     hash_frecuency.each do |k,v|
#       value_a = hash_sum.fetch(v[0])
#       value_b = hash_sum.fetch(v[1])
#       if (value_a + value_b) > max
#         max = value_a + value_b
#       end
#     end
#     return max
# end
#
# fptr = File.open(ENV['OUTPUT_PATH'], 'w')
#
# n = gets.strip.to_i
#
# a = gets.rstrip.split.map(&:to_i)
#
# result = pickingNumbers a
#
# fptr.write result
# fptr.write "\n"
#
# fptr.close()

# !/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'pickingNumbers' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY a as parameter.
#

def pickingNumbers(a)
  # Write your code here
  arr = Array.new(101, 0.to_i)
  max = 0
  result = 0

  a.each do |m|
    arr[m] = arr[m] + 1
  end
  t = 1

  arr.each do |n|
    next if arr[t].nil?

    result = [max, (n + arr[t])].max
    max = result
    t += 1
  end

  result
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

a = gets.rstrip.split.map(&:to_i)

result = pickingNumbers a

fptr.write result
fptr.write "\n"

fptr.close
