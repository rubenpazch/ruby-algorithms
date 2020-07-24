# 0 1 1 2 3 5 8 13 21 34

def fibrecursivo(number)
  return 0 if number.zero?

  return 1 if number == 1

  fibrecursivo(number - 1) + fibrecursivo(number - 2)
end

puts fibrecursivo(0)

puts fibrecursivo(1)

puts fibrecursivo(2)

puts fibrecursivo(3)

puts fibrecursivo(4)

puts fibrecursivo(5)
