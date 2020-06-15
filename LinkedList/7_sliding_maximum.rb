class Node
  attr_accessor :value, :next_node

  def initialization(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class Stack
  attr_accessor :head

  def push(number)
    new_node = Node.new
    new_node.value = number

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
      value
    else
      value = head.value
      temp = head.next_node
      @head = temp
    end
    value
  end

  def empty?
    if head.nil?
      true
    else
      false
    end
  end

  def top
    return nil if head.nil?
    return head.value unless head.nil?
  end

  def max
    max = head.value
    current = head.next_node

    return max if head.next_node.nil?

    max = current.value if current.value > max && head.next_node.next_node.nil?
    #max = current.value if current.value > max && current.next_node.nil?

    until current.next_node.nil?
      max = current.value if current.value > max
      current = current.next_node
    end
    max
  end
end

stack = Stack.new
stack.push(3)
puts stack.max
stack.push(5)
puts stack.max
# => 3

stack.pop
stack.push(7)
puts stack.max
# => 3

stack.push(2)
puts stack.max
# => 2

stack.pop
puts stack.max
# => 3

# def sliding_maximum(_k, array)
#  array.each do |item|
#  end
# end

# sliding_maximum(3, [1, 3, 5, 7, 9, 2])
# => [5, 7, 9, 9]
