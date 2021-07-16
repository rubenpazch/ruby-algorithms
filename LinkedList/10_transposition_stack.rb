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
end

def transpose(string)
  split_array = string.split
  full_string = ''

  split_array.each do |value|
    p value
  end

  full_string
end

puts transpose('gngngnnggnngggnnn')

# puts transpose('he was searchign on Bign for signign kigns')
# => he was searching on Bing for singing kings

# puts transpose('rignadingdiggn!')
# => ringadingdingg!

# puts transpose('gngngnnggnngggnnn')
# => nnnnnnnnngggggggg
