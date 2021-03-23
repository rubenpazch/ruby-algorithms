
class Person
  def initialize(name)
    @name = name
  end

  def name
    return @name
  end
end

class Doctor < Person
  def name
    "Dr." + super
  end
end

doctor1 = Doctor.new("PEdro")
puts doctor1.name