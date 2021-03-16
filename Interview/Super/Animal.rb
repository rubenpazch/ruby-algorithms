class Animal 
  def name 
    puts 'animal'
  end
end

class Cat < Animal
  def name
    super
  end
end

cat = Cat.new
cat.name


def puts(*)
  super
end

puts 1, 2, 3
