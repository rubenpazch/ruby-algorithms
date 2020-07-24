# 0 1 1 2 3 5 8 13 21 34

def Fiboloop(number)
  return 0 if number.zero?
  return 1 if number == 1

  previous_fibo = 0
  current_fibo = 1
  fib = 0
  number -= 1
  number.times do
    fib = previous_fibo + current_fibo
    previous_fibo = current_fibo
    current_fibo = fib
  end
  fib
end

puts Fiboloop(6)
