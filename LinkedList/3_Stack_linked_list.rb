# Start with your code from LinkedList challenge.

class Stack
    def push(number)
      # your code here
    end
    
    def pop
      # your code here
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