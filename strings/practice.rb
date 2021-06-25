# p "abcdef" <=> "abcde"     #=> 1
# p "abcdef" <=> "abcdef"    #=> 0
# p "abcdef" <=> "abcdefg"   #=> -1
# p "abcdef" <=> "ABCDEF"    #=> 1
# p "abcdef" <=> 1           #=> nil

# str1 = 'aa'
# str2 = 'bb'
# ar1 = str1.squeeze.each_char.to_a
# ar2 = str2.squeeze.each_char.to_a
#
# p ar1 - ar2
# p ar2 - ar1
#
## str1.each_char{|x| x - }
#
# p str1 <=> str2
#
# puts 3 / 2

# #cantidadACambiar = 1211
# cantidadACambiar = 1000
# cantidadACambiar = 100
# cantidadACambiar = 10
# cantidadACambiar = 1
# cantidadACambiar = 0
# cantidadACambiar = 1123
cantidadACambiar = 15

def totalBilletesMonedas(retirar)
  billete200 = 200.0

  arr = [100.0, 50.0, 20.0, 10.0, 5.0, 2.0, 1.0, 0.5, 0.2, 0.1]

  minimo = 0.0

  if retirar > billete200
    division = retirar / billete200
    residuo = retirar % billete200
    minimo += division
  else
    residuo = retirar
  end

  return minimo if residuo == 0.0

  i = 0
  while residuo != 0.0
    if residuo >= arr[i]
      division = residuo / arr[i]
      residuo = residuo % arr[i]
      minimo += division
    end
    i += 1
  end

  minimo
end

p totalBilletesMonedas(cantidadACambiar)

test
