def sqrt(number)
  sqrt_recursive(number, 0, number)
end

def sqrt_recursive(number, min_interval, max_interval)
  # Your code here
  half = (min_interval + max_interval) / 2
  new_square = half * half

  return half if new_square == number

  if new_square > number
    sqrt_recursive(number, 0, half)
  else
    sqrt_recursive(number, half, max_interval)
  end
end

puts sqrt(25)
puts sqrt(7056)

#  25 -> 5 * 5 = 25    .. 5²
#  25/2 = 12²  = 124 > 25
#  12/2 = 6² = 36 > 25
#  6/2 = 3² = 9 < 25
#  9/2 = 5² = 25
#   min
# (number, 0, 25) (0 + 25)/2 = 12 = 12*12 = 144
# (number, 0, 12) (0 + 12)/2 = 6 = 6*6 = 36
# (number, 0, 6) (0 + 6)/2 = 3 = 3*3 = 9

# (number, 3, 6) (3 + 6)/2 = 4 = 4*4 = 16
# (number, 4, 6) (4 + 6)/2 = 5 = 5*5 = 25
