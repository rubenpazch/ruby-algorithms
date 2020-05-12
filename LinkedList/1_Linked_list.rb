# frozen_string_literal: true

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

  def addv2(number)
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

  def addv1(number)
    new_node = Node.new
    new_node.value = number
    new_node.next_node = nil
    if head.nil?
      @head = new_node
      @tail = new_node
    else
      @temp = head
      @head = new_node
      @head.next_node = @temp
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
end

list = LinkedList.new
list.add(3)
list.add(5)
list.add(7)
list.add(11)

p list.get(0)
p list.get(1)
p list.get(2)
p list.get(3)
