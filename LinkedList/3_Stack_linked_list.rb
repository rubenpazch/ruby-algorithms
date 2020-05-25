# Start with your code from LinkedList challenge.
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
    new_node.value  = number
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
      temp  = head.next_node
      @head = temp
    end
    value
  end
end

stack = Stack.new
stack.push(3)
stack.push(5)

puts stack.pop
# => 5

stack.push(2)
stack.push(7)

puts stack.pop
# => 7

puts stack.pop
# => 2

puts stack.pop
# => 3