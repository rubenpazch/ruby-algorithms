class Stack
  attr_accessor :capacity
  attr_accessor :data
  attr_accessor :top

  def initialize(capacity = 1000)
    @capacity = capacity
    @data = Array.new(capacity)
    @top = -1
  end

  def isEmpty?
    top == -1
  end

  def size
    top + 1
  end

  def push(value)
    p size
    p data.length
    if size == data.length
      p 'array is full'
    else
      @top += 1
      @data[top] = value
    end
  end

  def pop
    if isEmpty?
      p 'array is empty'
    else
      topVal = data[top]
      @top = top - 1
      topVal
    end
  end
end

stack = Stack.new(4)

stack.push(15)
stack.push(16)
stack.push(165)
stack.pop
stack.push(17)
stack.push(18)
# stack.pop
stack.push(1)
p stack
