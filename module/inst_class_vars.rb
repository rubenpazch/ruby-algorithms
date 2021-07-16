module X
  @instvar = "X's @instvar"
  @anotherinstvar = "X's 2nd @instvar"
  def self.aaa
    puts(@instvar)
  end

  def amethod
    @instvar = 10 # creates @instvar in current scope
    puts(@instvar)
  end
end

# X.aaa #=> X's @instvar

include X
p( @instvar ) #=> nil
amethod #=> 10
puts( @instvar ) #=> 10
@instvar = "hello world"
puts( @instvar ) #=> "hello world"