def fib(number)
  if number.zero?
    0
  elsif number == 1
    1
  else
    fib(number - 1) + fib(number - 2)
  end
end

#puts fib(6)

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

 #print flatter([[1, 2], [3, 4]])
 #print flatter([1, [8, 9]], [3, 4])
