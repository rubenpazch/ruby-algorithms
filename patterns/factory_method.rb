class Creator
    def factory_method
        raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end

    def some_operation
        product = factory_method
        result = "Creator: the same creator's cpde has worked with #{product.operation}"
        result
    end
end

class ConcreteCreator1 < Creator
    def factory_method
        ConcreteProduct1.new
    end
end

class ConcreteCreator2 < Creator
    def factory_method
        ConcreteProduct2.new
    end
end

class Product
    def operation 
        raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
end

class ConcreteProduct1 < Product
    # @return [String]
    def operation
      '{Result of the ConcreteProduct1}'
    end
end
  
class ConcreteProduct2 < Product
    # @return [String]
    def operation
      '{Result of the ConcreteProduct2}'
    end
end


def client_code(creator)
    print "Client: I'm not aware of the creator, but it still works #{creator.some_operation}"
end

client_code(ConcreteCreator1.new)