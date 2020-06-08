class Node
  attr_accessor :value, :next_node

  def initialization(value, next_node = nil)
    @values = value
    @next_node = next_node
  end
end
class Stack
  attr_accessor :head

  def push(number)
    new_node = Node.new
    new_node.value = number
    new_node.next_node = nil

    if head.nil?
      @head = new_node
    else
      new_node.next_node = head
      @head = new_node
    end
  end

  def pop
    value = nil
    if head.nil?
      p 'empty'
    else
      value = head.value
      temp = head.next_node
      @head = temp
    end
    value
  end

  def min
    min = head.value
    current = head.next_node

    return min if head.next_node.nil?

    min = current.value if current.value < min && head.next_node.next_node.nil?

    min = current.value if min > current.value && current.next_node.nil?

    until current.next_node.nil?
      min = current.value if current.value < min
      current = current.next_node
    end
    min
  end
end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.min
# => 3

stack.pop
stack.push(7)
puts stack.min
# => 3

stack.push(2)
puts stack.min
# => 2

stack.pop
puts stack.min
# => 3
