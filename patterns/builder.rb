class Builder
  def produce_part_a
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def produce_part_b
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def produce_part_c
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class ConcreteBuilder1 < Builder
  def initialize
    reset
  end

  def reset
    @product = Product1.new
  end

  def product
    product = @product
    reset
    product
  end

  def produce_part_a
    @product.add('partA1')
  end

  def produce_part_b
    @product.add('partB1')
  end

  def produce_part_c
    @product.add('partB1')
  end
end

class Product1
  def initialize
    @parts = []
  end

  def add(part)
    @parts << part
  end

  def list_parts
    print "product parts: #{@parts.join(', ')}"
  end
end

class Director
  attr_accessor :builder

  def initialize
    @builder = nil
  end

  attr_writer :builder

  def build_minimal_viable_product
    @builder.produce_part_a
  end

  def build_full_featured_product
    @builder.produce_part_a
    @builder.produce_part_b
    @builder.produce_part_c
  end
end

director = Director.new
builder = ConcreteBuilder1.new
director.builder = builder

p director.build_minimal_viable_product
p builder.product.list_parts

p director.build_full_featured_product
p builder.product.list_parts
