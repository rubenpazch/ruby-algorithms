# abba, 14
def repeatedString(s, n)
  len = s.length # 4
  div = n / len # 3
  dif = n - (div * len)

  array = s.chars
  totalA = array.select { |item| item == 'a' }

  if dif == 0
    totalA.length * div
  else
    modString = s[0, dif]
    puts modString
    shortArray = modString.chars
    totalMod = shortArray.select { |item| item == 'a' }
    totalA.length * div + totalMod.length
  end
end

puts repeatedString('abbac', 14)
# abbac-abbac-abba
