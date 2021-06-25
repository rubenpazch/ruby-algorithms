class JsonWebToken
  @instance = new

  private_class_method :new

  class << self
    attr_reader :instance
    end

  # class << self
  def encode
    puts 'encode'
  end

  def decode
    puts 'decode'
  end
  # end
end

hh = JsonWebToken.instance
p hh.object_id
h22h = JsonWebToken.instance
p h22h.object_id
hh.encode
