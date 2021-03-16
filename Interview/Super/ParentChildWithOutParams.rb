class Parent
    def say
        p "Soy Tu Padre"
    end
end

class Child < Parent
    def say(message)
        super()
    end
end

Child.new.say("Hi!!!!")