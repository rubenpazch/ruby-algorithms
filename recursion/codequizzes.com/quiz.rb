def fib(number)
  if number.zero?
    0
  elsif number == 1
    1
  else
    fib(number - 1) + fib(number - 2)
  end
end

# puts fib(6)

def flatter(array, result = [])
  array.each do |element|
    if element.is_a?(Array)
      flatter(element, result)
    else
      result << element
    end
  end
  result
end

# print flatter([[1, 2], [3, 4]])
# print flatter([1, [8, 9]], [3, 4])

roman_mapping = {
  1000 => 'M',
  900 => 'CM',
  500 => 'D',
  400 => 'CD',
  100 => 'C',
  90 => 'XC',
  50 => 'L',
  40 => 'XL',
  10 => 'X',
  9 => 'IX',
  5 => 'V',
  4 => 'IV',
  1 => 'I'
}
def integer_to_roman(roman_mapping, number, result = '')

  return result if number.zero?

  roman_mapping.each_key do |divisor|
    quotient, modulus = number.divmod(divisor)    
    result << roman_mapping[divisor] * quotient
    return integer_to_roman(roman_mapping, modulus, result) if quotient > 0
  end
end

puts integer_to_roman(roman_mapping, 115)