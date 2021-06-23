class Animal
  def name
    puts 'animal'
  end
end

class Cat < Animal
end

cat = Cat.new
cat.name

puts 1, 2, 3
