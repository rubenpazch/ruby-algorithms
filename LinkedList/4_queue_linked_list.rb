class Node
  attr_accessor :value, :next_node

  def initialization(value, next_node = nil)
    @values = value
    @next_node = next_node
  end
end

class Queue
  attr_accessor :head, :tail

  def add(number)
    new_node = Node.new
    new_node.value = number
    new_node.next_node = nil
    if head.nil?
      @head = new_node
      @tail = new_node
    else
      new_node.next_node = head
      @head = new_node
    end
  end

  def remove
    removed = -1
    if head.nil?
      return -1
    else
      if head.next_node.nil?
        removed = head.value
        @head = nil
        @tail = nil
        return removed
      end

      current = head
      previous = head
      until current.next_node.nil?
        previous = current
        current = current.next_node
      end
      removed = current.value
      previous.next_node = nil
      @tail = previous
    end

    removed
  end
end

queue = Queue.new

queue.add(3)
queue.add(5)
puts queue.remove
# => 3

queue.add(2)
queue.add(7)
puts queue.remove
# => 5

puts queue.remove
# => 2

puts queue.remove
# => 7

puts queue.remove
# => -1
