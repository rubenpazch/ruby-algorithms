fred = Class.new do 
  def  meth1  
    "hello"
  end

  def meth2
    "bye"
  end
end

a = fred.new

puts a 
puts a.meth1
puts a.meth2
