class GrandParent
  def say(message)
    p "GrandParent : #{message}"
  end
end

class Parent < GrandParent
end

class Child < Parent
end

Child.new.say('Hi Granparent')
