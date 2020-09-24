# p "abcdef" <=> "abcde"     #=> 1
# p "abcdef" <=> "abcdef"    #=> 0
# p "abcdef" <=> "abcdefg"   #=> -1
# p "abcdef" <=> "ABCDEF"    #=> 1
# p "abcdef" <=> 1           #=> nil

#str1 = 'aa'
#str2 = 'bb'
#ar1 = str1.squeeze.each_char.to_a
#ar2 = str2.squeeze.each_char.to_a
#
#p ar1 - ar2
#p ar2 - ar1
#
## str1.each_char{|x| x - }
#
#p str1 <=> str2
#
#puts 3 / 2




##cantidadACambiar = 1211
#cantidadACambiar = 1000
#cantidadACambiar = 100
#cantidadACambiar = 10
#cantidadACambiar = 1
#cantidadACambiar = 0
cantidadACambiar = 1123


def totalBilletesMonedas (retirar)
    billete100 = 100

    arr = [10,1]
    
    minimo = 0
    division = retirar/billete100
    residuo = retirar%billete100 
    minimo = minimo + division 

    if residuo == 0 
        return minimo
    end
    
    i = 0
    while  residuo != 0 
        division = residuo/arr[i]
        residuo = residuo%arr[i]
        minimo  = minimo + division
        i = i + 1
    end

    return minimo
end


p totalBilletesMonedas(cantidadACambiar)