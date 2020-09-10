#!/bin/ruby

require 'json'
require 'stringio'

# Complete the equalizeArray function below.
def equalizeArray(arr)
  hash = Hash.new
  arr.sort.each{|h| hash.store(h,0)}
  arr.each do |d|
    if hash.has_key?(d)
      hash[d]= hash[d]+1
    end
  end
  max = 0
  hash.each{|k,v| v > max ? max = v : max }     
  
  return arr.length- max
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

result = equalizeArray arr

fptr.write result
fptr.write "\n"

fptr.close()
