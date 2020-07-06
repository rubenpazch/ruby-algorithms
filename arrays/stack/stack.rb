class Stack
  def initialize(capacity:)
    @capacity = capacity
    @data = Array.new(capacity)
    @top = -1
  end
  def isEmpty?  
    return @top == -1
  end

  def size
    return @top + 1;
  end

  def print 
    for value in @data do 
      if !value.nil?
        puts value
      end
    end 
  end

  def push(value)
    if size == @data.length
      p 'is full'
    else 
      @top = @top + 1;
      @data[@top] = value
    end
  end

  def pop 
    if isEmpty? 
      puts 'there is not elements'
    else 
      topVal = @data[@top]
      @data[@top] = nil
      @top = @top - 1 
      return topVal
    end 
  end 
end

stack = Stack.new(capacity: 50)
stack.push(12)
stack.push(15)
stack.push(17)
stack.pop
stack.pop
stack.push(5)
stack.print