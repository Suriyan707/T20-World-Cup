class Stack
  def initialize
    @stack = []
  end
  def push(element)
    @stack.push(element)
  end
  def pop
    @stack.pop
  end
  def peek
    @stack.last
  end
  def size
    @stack.size
  end
end
stack = Stack.new
stack.push(1)
stack.push(2)
stack.push(3)
puts "peek element: #{stack.peek}" 
puts "Pop element: #{stack.pop}"
puts "Pop element: #{stack.pop}" 
puts "size of stack: #{stack.size}"