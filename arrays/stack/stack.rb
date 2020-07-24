class Stack
  def initialize(capacity:)
    @capacity = capacity
    @data = Array.new(capacity)
    @top = -1
  end

  def isEmpty?
    @top == -1
  end

  def size
    @top + 1
  end

  def print
    @data.each do |value|
      puts value unless value.nil?
    end
  end

  def push(value)
    if size == @data.length
      p 'is full'
    else
      @top += 1
      @data[@top] = value
    end
  end

  def pop
    if isEmpty?
      puts 'there is not elements'
    else
      topVal = @data[@top]
      @data[@top] = nil
      @top -= 1
      topVal
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
