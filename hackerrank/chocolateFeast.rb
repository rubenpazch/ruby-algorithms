initial money           = 20
price per chocolate     = 2
wrappers = 3 

bougth = 20/2 = 10

free chocolates  = 10%3  = 3
mod = 10/3 = 1 


free chocolates  = 3/3  = 1
mod = 3%3 = 0


free chocolates  = 1/3  = 0
mod = 1%3 = 1

to eat  = 10 + 3 +  1 

6   2   2

6/2 = 3    3/2 = 1
1/2 = 1    1%2 = 1

1



9   2   2
9/2 = 4     4/2=2
2/2 = 1     1/2=1

10  2   2
comprado    free    restos
10/2 = 5    5/2= 2  5%2=1
            3/2= 1  3%2=1
            2/2=1   2%2=0
            
19  4   2
comprado    free    restos
27/4 = 6    6/2= 3  6%2=0
            3/2= 1  3%2=1
            2/2= 1  2%2=0
            
51  5   3
comprado    free    restos
51/5 = 10   10/3=3  10%3=1
            4/3= 1  4%3=1
            2/3= 0  2%3=2



#!/bin/ruby

require 'json'
require 'stringio'

# Complete the chocolateFeast function below.
def chocolateFeast(n, c, m)
  counter = 0 
  
  chocolate_bougth = n/c
  free = chocolate_bougth/m
  counter = chocolate_bougth + free
  mod = chocolate_bougth%m
  
  while free > 0          
    new_ch = mod + free    
    p new_ch
    mod = new_ch%m        
    free = new_ch/m   
    counter += free
  end
  
  
  return counter
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

t = gets.to_i

t.times do |t_itr|
    ncm = gets.rstrip.split

    n = ncm[0].to_i

    c = ncm[1].to_i

    m = ncm[2].to_i

    result = chocolateFeast n, c, m

    fptr.write result
    fptr.write "\n"
end

fptr.close()
