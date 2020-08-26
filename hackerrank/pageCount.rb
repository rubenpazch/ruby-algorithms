# pages = 6
# destination page = 2
# 1  -> 2 y 3 -> 4 y 5 -> 6
# result = 1

# pages = 5
# destination page = 4
# 1  -> 2 y 3 -> 4 y 5
# result = 0

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
