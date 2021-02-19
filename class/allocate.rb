klass = Class.new do 
  def initialize(*args)
    @initialized = true
  end

    @initialized || false
  end
end

puts klass.allocate.initialized?
