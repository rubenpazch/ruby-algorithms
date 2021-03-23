class Animal
  def some_method
    method_1
  end

  protected
  def method_1
    puts "Hi I am a #{self.class}"
  end
end

class Dog < Animal
  def some_breed
    method_1
  end
end

class Cat < Animal
  def my_method
    self.method_1
  end
end

Animal.new.some_method
Dog.new.some_breed
Cat.new.my_method
