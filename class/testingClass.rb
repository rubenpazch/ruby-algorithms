class Class
  alias old_new new 
  def new(*args)
    print "Creating a new ", self.name, "\n"
    old_new(*args)
  end
end

class Name
end

n = Name.new

