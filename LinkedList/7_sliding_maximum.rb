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
    head.nil?
  end

  def top
    return nil if head.nil?
    return head.value unless head.nil?
  end

  def max
    return nil if head.nil?

    return head.value if head.next_node.nil?

    next_temp = head.next_node

    return next_temp.value if next_temp.value > head.value && head.next_node.next_node.nil?

    max = head.value
    until next_temp.nil?
      max = next_temp.value if next_temp.value > max
      next_temp = next_temp.next_node
    end
    max
  end
end

def sliding_maximum(_k, array)
  i = 0
  result = []
  array.each do |_item|
    slice_array = array.slice(i, _k)
    p slice_array
    break if _k > slice_array.length

    stack = Stack.new

    slice_array.each do |slice|
      stack.push(slice)
    end
    p stack
    result.push(stack.max)
    stack = nil
    i += 1
  end
  result
end

# p sliding_maximum(3, [1, 3, 5, 7, 9, 2])
p sliding_maximum(4, [9, 3, 5, 1, 7, 10])
# => [9, 7, 10]
