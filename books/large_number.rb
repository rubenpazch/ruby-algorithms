rice_on_square = 1

1024.times do |square| 
  puts "On square #{square +1} are #{rice_on_square} grain(s)"
  rice_on_square *= 2
end