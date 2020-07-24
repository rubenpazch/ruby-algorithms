# 0 1 1 2 3 5 8 13 21 34

def fibloop(number)
  return 0 if number.zero?

  return 1 if number == 1

  current_fib = 0
  previous_fib = 1
  fib = 0
  i = 1
  while i <= number
    fib = current_fib + previous_fib
    previous_fib = current_fib
    current_fib = fib
    i += 1
  end
  fib
end


puts fibloop(0)
puts fibloop(1)
puts fibloop(2)
puts fibloop(3)
puts fibloop(4)
puts fibloop(5)