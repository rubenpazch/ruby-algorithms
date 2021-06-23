x = 1 # local to this program

module Foo
  x = 50 # local to module Foo
  # this can be mixed in but the variable x won't be visible
  def no_bar
    x
  end

  def bar
    @x = 1000
    @x
  end

  puts("In Foo: x = #{x}") # this can access the module-local x
end

include Foo # mix in the Foo module
puts (x)
puts (bar)
puts (no_bar)
