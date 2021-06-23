class Parent
  def say
    yield
  end
end

class Child < Parent
end

Child.new.say { p 'Gusto de Conocerte Padre' }
