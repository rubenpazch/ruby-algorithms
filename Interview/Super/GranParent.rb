class GrandParent
    def say(message)
        p "GrandParent : #{message}"
    end
end

class Parent < GrandParent
end

class Child < Parent
    def say(message)
        super
    end
end

Child.new.say("Hi Granparent")