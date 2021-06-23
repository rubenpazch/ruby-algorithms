#!/bin/ruby

require 'json'
require 'stringio'

# Complete the fairRations function below.
def fairRations(b)
  i = 0
  counter = 0
  while i < b.length

    return 'NO' if b[i + 1].nil? && b[i].odd?

    if b[i].odd? && !b[i + 1].nil?
      b[i] += 1
      b[i + 1] += 1
      counter += 2
    end

    i += 1
  end

  counter
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

N = gets.to_i

B = gets.rstrip.split(' ').map(&:to_i)

result = fairRations B

fptr.write result
fptr.write "\n"

fptr.close
