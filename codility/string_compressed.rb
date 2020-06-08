# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(s, k)
    # write your code in Ruby 2.2
    
    len = s.length
    arr = s.split('')    
    i = 0
    current_string = arr[0]
    counter = 0
    compressed_string = ''
    while i <= len do       
      if current_string != arr[i]
        current_string = counter.to_s + current_string
        compressed_string =   compressed_string + current_string
        current_string = arr[i]
        counter = 1 
      else         
        counter += 1 
      end      
      i += 1
    end  
    p compressed_string

   
    return compressed_string.length
end
  
  
s = 'ABBBCCDDCCC'

puts solution(s,3)