klass = Class.new do 
  def initialize(*args)
    @initialized = true
  end

  def initialized? 
    @initialized || false
  end
end

puts klass.allocate.initialized?
