class Parent
  def say
    p 'Soy Tu Padre'
  end
end

class Child < Parent
  def say(_message)
    super()
  end
end

Child.new.say('Hi!!!!')
