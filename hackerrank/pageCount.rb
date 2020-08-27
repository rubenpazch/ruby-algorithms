# pages = 6
# destination page = 2
# 1  -> 2 y 3 -> 4 y 5 -> 6
# result = 1

# pages = 5
# destination page = 4
# 1  -> 2 y 3 -> 4 y 5
# result = 0


# 1 -> 2 y 3 -> 4 y 5 -> 6 y 7 -> 8
# 1 -> 2 y 3 -> 4 y 5 -> 6 y 7 
# 1 -> 2 y 3 -> 4 y 5 -> 6         1  2 3 4 5
# 1 -> 2 y 3 -> 4 y 5     
# 1 -> 2 y 3     -1 0  
# 1

=begin

  end si es par   6 / 2 = 3
  end si es impar   5 / 2 = 2

  si destino > half
    empiezo por el final
  caso contratio 
    empiezo por inicio
  
  si es par 
    contador = 0    
  si es impar 
    contador = -1

  contador = 0  

  mientras i > 1 hacer 
    si paginas == Destino
      salir y retornar contador
    paginas = paginas - 1 
  fin
=end
  
#!/bin/ruby

#
# Complete the pageCount function below.
#
def pageCount(n, p)
  half = n / 2
  page_to_star = -1
  return 0 if half == p
  
  
  if p > half    
      counter = -1
      i = n
      while i > half do 
          counter = counter +1 
          return counter/2 if p == i
          i = i - 1
      end
  else         
      counter = 0
      i = 1
      while i < half do  
          counter = counter +1
          return counter/2 if p == i
          i = i +1
      end
  end
  
  #puts "start by #{page_to_star}"
  
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

p = gets.to_i

result = pageCount n, p

fptr.write result
fptr.write "\n"

fptr.close()




#!/bin/ruby

#
# Complete the pageCount function below.
#
def pageCount(n, p)
  half = n / 2 
  return 0 if half == p
  return 0 if n == p
     
  if p > half         
      i = n # 2
      counter = 0 # 1
      while i > half do  # 2 > 1             
          counter = counter +1 unless i.odd? # 2            
          return counter/ 2 if p == i  # 2 == 2 
          i = i -1 
      end
  else
      i = 1 
      counter = 0
      while i < half do             
          counter = counter +1 unless i.odd?
          return counter/ 2 if p == i
          i = i + 1 
      end
  
  end 
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

p = gets.to_i

result = pageCount n, p

fptr.write result
fptr.write "\n"

fptr.close()



#!/bin/ruby

#
# Complete the pageCount function below.
#
def pageCount(n, p)
  half = n / 2 
  return 0 if half == p
  return 0 if n == p
     
  if p > half         
      i = n
      counter = 0
      while i > half do  
          return counter if p == i  
          counter = counter +1 if i.even?             
          i = i -1 
      end
  else
      i = 1 
      counter = 0
      while i < half do                         
          counter = counter + 1 if i.even?            
          return counter if p == i
          i = i + 1 
      end
  
  end 
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

p = gets.to_i

result = pageCount n, p

fptr.write result
fptr.write "\n"

fptr.close()



#!/bin/ruby

#
# Complete the pageCount function below.
#
def pageCount(n, p)
  totalFromStartToN = n/2 
  totalFromStarttoP = p/2 
  totalFromEndtoP = totalFromStartToN - totalFromStarttoP    
  return min(totalFromStarttoP, totalFromEndtoP)
end

def min(x, y)
  if x > y 
      return y
  else 
      return x
  end
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

p = gets.to_i

result = pageCount n, p

fptr.write result
fptr.write "\n"

fptr.close()
