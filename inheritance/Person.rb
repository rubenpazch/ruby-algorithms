class Person
  def initialize(name)
    @name = name
  end

  attr_reader :name
end

class Doctor < Person
  def name
    'Dr.' + super
  end
end

doctor1 = Doctor.new('PEdro')
puts doctor1.name
puts doctor1.instance_variables.inspect
