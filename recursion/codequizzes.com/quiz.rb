def fib(number)
  if number.zero?
    0
  elsif number == 1
    1
  else
    fib(number - 1) + fib(number-2) 
  end
end

puts fib(6)
