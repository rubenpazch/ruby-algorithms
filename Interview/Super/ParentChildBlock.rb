class Parent
    def say
        yield
    end
end

class Child < Parent
    def say
        super
    end
end

Child.new.say { p "Gusto de Conocerte Padre"}
