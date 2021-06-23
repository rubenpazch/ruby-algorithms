# Start with your code from last challenge.
class Node
  attr_accessor :value, :next_node

  def initialization(value, next_node = nil)
    @values = value
    @next_node = next_node
  end
end

class LinkedList
  attr_accessor :head, :tail

  def add(number)
    new_node = Node.new
    new_node.value = number
    new_node.next_node = nil

    if head.nil?
      @head = new_node
      @tail = new_node
    else
      @tail.next_node = new_node
      @tail = new_node
    end
  end

  def get(index)
    i = 0
    temp = head
    until temp.nil?
      return temp.value if index == i

      temp = temp.next_node
      i += 1
    end
    0
  end

  def remove(index)
    return if index.negative?

    if index.zero?
      temp = head.next_node
      @head = temp
      return
    end

    if index == 1
      temp = head.next_node.next_node
      @head.next_node = temp
    else
      i = 0
      current = head
      while i < index - 1 && !current.next_node.nil?
        current = current.next_node
        i += 1
      end
      temp = current.next_node.next_node
      current.next_node = temp
    end
  end

  def add_at(index, number)
    new_node = Node.new
    new_node.value = number
    new_node.next_node = nil

    return if index.negative?

    if index.zero?
      new_node.next_node = head
      @head = new_node
      return
    end

    if index == 1
      new_node.next_node = head.next_node
      @head.next_node = new_node
    else
      i = 0
      current = head
      while i < index - 1 && !current.next_node.nil?
        current = current.next_node
        i += 1
      end
      new_node.next_node = current.next_node
      current.next_node = new_node
    end
  end
end

list = LinkedList.new

list.add(3)
list.add(5)
list.add_at(1, 11)
list.add_at(0, 13)
list.add_at(2, 17)
list.add_at(6, 19)
list.remove(4)

puts list.get(0)
puts list.get(1)

puts list.get(2)
# => 11

puts list.get(3)
puts list.get(4)
puts list.get(5)
# => 5
