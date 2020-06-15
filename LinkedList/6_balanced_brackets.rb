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
      p 'empty'
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

def balanced_brackets?(string)
  # your code here
  arr = string.chars
  stack = Stack.new
  arr.each do |item|
    
    if item == '(' || item == '[' || item == '{'
      stack.push(item)
    else      
      top = stack.top()
      if (top == '[' && item == ']') || (top == '(' && item == ')') || (top == '{' && item == '}')
        stack.pop
      end
    end
    return false if (item == '}' || item == ')' || item == ']') && stack.nil? 
  end
  stack.empty?
end

puts balanced_brackets?('(hello)[world]}')
# => true

# puts balanced_brackets?('([)]')
# => false

# puts balanced_brackets?('[({}{}{})([])]')
# => true
