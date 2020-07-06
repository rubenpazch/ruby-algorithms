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
end

def transpose(string)
  split_array = string.split
  full_string = ''
  split_array.each do |item|
    arr = item.chars
    stack = Stack.new
    arr.each do |element|
      stack.push(element)
    end
    new_string = ''
    p stack
    until stack.empty?
      last_node = stack.top
      node = stack.pop
      
      if node == 'n' && stack.top == 'g'
        top = stack.pop
        new_string = node + top + new_string
        p new_string
      elsif node == 'g' && stack.top == 'g'
        top = stack.pop
        new_string =  new_string + node + top
        p new_string
      elsif node == 'g' && stack.top != 'n'
        new_string += node
        p new_string      
      else
        new_string = node + new_string
        p new_string
      end
    end
    full_string = full_string + ' ' + new_string
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
