#!/bin/ruby

require 'json'
require 'stringio'

# Complete the equalizeArray function below.
def equalizeArray(arr)
  hash = {}
  arr.sort.each { |h| hash.store(h, 0) }
  arr.each do |d|
    hash[d] = hash[d] + 1 if hash.key?(d)
  end
  max = 0
  hash.each { |_k, v| v > max ? max = v : max }

  arr.length - max
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

arr = gets.rstrip.split.map(&:to_i)

result = equalizeArray arr

fptr.write result
fptr.write "\n"

fptr.close
