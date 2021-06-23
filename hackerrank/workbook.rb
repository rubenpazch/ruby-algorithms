#!/bin/ruby

require 'json'
require 'stringio'

# Complete the workbook function below.
def workbook(_n, k, arr)
  pageNumber = 1
  counter = 0

  (0..arr.length - 1).each do |i|
    (1..arr[i]).each do |j|
      counter += 1 if j == pageNumber
      pageNumber += 1 if j == arr[i] || (j % k).zero?
    end
  end

  counter
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

nk = gets.rstrip.split

n = nk[0].to_i

k = nk[1].to_i

arr = gets.rstrip.split.map(&:to_i)

result = workbook n, k, arr

fptr.write result
fptr.write "\n"

fptr.close
