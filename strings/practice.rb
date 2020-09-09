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

