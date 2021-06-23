class Parent
  def say(message)
    p message
  end
end

class Child < Parent
end

Child.new.say('Hi World')
