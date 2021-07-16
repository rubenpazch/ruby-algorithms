class ParentClass
  def method1
    puts 'hello from method 1 in the parent class'
  end

  def method2
    puts 'hello from method2 in the parent class'
  end
end

class ChildClass < ParentClass
  def method2
    puts 'hello from method 2 in child class'
  end
end

my_object = ChildClass.new
my_object.method1
my_object.method2
