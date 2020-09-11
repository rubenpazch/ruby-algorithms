#!/bin/ruby

require 'json'
require 'stringio'

# Complete the encryption function below.
def encryption(s)
  len = s.length 
  arr = [1,2,3,4,5,6,7,8,9]  
  square_n = Math.sqrt(len)
    
  i = 1
  last = 0
  if arr.include?(square_n)
    i = last = square_n
  else 
    while i<=9 do 
      if i*i < len
        last = i      
      else 
        break
      end
      i=i+1
    end
  end
  
  
  
  
  #empty_table = Array.new(i)
  
  #temp_string = s
  #
  #
  #array_bid = Array.new(i) { Array.new(last,'') }
  #
  #i = m = 0 
  #array_bid.each do |rows|
  #  j = 0
  #  portion =  temp_string[0..last]    
  #  rows.each do |col| 
  #    array_bid[j][i] = portion[m]
  #    j += 1
  #    m += 1
  #  end
  #  temp_string = temp_string.delete_prefix(portion)
  #  j = 0
  #  i += 1
  #end
  #p array_bid
  
  #temp_string = temp_string.delete_prefix(portion)
  #p temp_string
  #
  #empty_table = Array.new(i) { Array.new(last,'') }
  #
  #i = m = 0 
  #empty_table.each do |rows|
  #  j = 0
  #  rows.each do |col| 
  #    empty_table[i][j] = s[m]
  #    j += 1
  #    m += 1
  #  end
  #j = 0
  #i += 1
  #end
  
 
  
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

s = gets.to_s.rstrip

result = encryption s

fptr.write result
fptr.write "\n"

fptr.close()
