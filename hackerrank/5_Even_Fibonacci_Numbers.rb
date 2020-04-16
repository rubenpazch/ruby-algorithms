#!/bin/ruby
# frozen_string_literal: true

def sum_of_even_array(arr)
  counter = 0
  arr.each do |x|
    counter += x if x.even?
  end
  counter
end

def fibonacci_numbers(number)
  arr = []
  arr[0] = 1
  arr[1] = 2
  i = 2
  while i < number
    if arr[i - 1] + arr[i - 2] < number
      arr[i] = arr[i - 1] + arr[i - 2]
    else
      break
     end
    i += 1
  end
  arr
end

t = gets.strip.to_i
(0..t - 1).each do |_a0|
  n = gets.strip.to_i
  arr = fibonacci_numbers(n)
  p sum_of_even_array(arr)
end

arr = fibonacci_numbers(10)
puts arr.inspect
puts sum_of_even_array(arr)
