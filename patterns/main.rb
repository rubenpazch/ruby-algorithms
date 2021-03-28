class AbstractFactory
    def create_product_a
        raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
    def create_product_b
        raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
end

class ConcreteFactory1 < AbstractFactory
    def create_product_a
        ConcreteFactoryA1.new
    end

    def create_product_b 
        ConcreteFactoryB1.new
    end
end

class  AbstractProductA
    def usefull_function_a
        raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
end

class ConcreteFactoryA1 < AbstractProductA
    def usefull_function_a
        'The result of the product A1'
    end
end

class ConcreteFactoryA2 < AbstractProductA
    def usefull_function_a
        'The result of the product A2'
    end
end

class AbstractProductB
    def usefull_function_b
        raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
    def another_useful_function_b(_collaborator)
        raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
end

class ConcreteFactoryB1 < AbstractProductB
    def usefull_function_b
        'The result of the product B1'
    end
    def another_useful_function_b(collaborator)
        result = collaborator.usefull_function_a
        "The result of the B1 collaborating with the (#{result})"
    end
end

class ConcreteProductB2 < AbstractProductB
    # @return [String]
    def usefull_function_b
      'The result of the product B2.'
    end
  
    # The variant, Product B2, is only able to work correctly with the variant,
    # Product A2. Nevertheless, it accepts any instance of AbstractProductA as an
    # argument.
    def another_useful_function_b(collaborator)
      result = collaborator.useful_function_a
      "The result of the B2 collaborating with the (#{result})"
    end
end

def client_code(factory)
    product_a = factory.create_product_a
    product_b = factory.create_product_b

    puts product_b.usefull_function_b.to_s
    puts product_b.another_useful_function_b(product_a).to_s
end

puts 'client: testing client code with the first factory type:'
client_code(ConcreteFactory1.new)