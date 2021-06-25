class Singleton
  @instance = new

  private_class_method :new

  class << self
    attr_reader :instance
    end

  def some_business_logic; end
end

s1 = Singleton.instance
s2 = Singleton.instance

if s1.equal?(s2)
  print 'singleton works'
else
  print 'singleton'
end
