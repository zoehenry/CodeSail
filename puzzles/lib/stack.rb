class Stack
  attr_accessor :this_stack

  def initialize
    @this_stack = []
  end

  def push(x)
    @this_stack.push(x)
  end

  def pop
    @this_stack.pop
  end

  def count
    @this_stack.length
  end

end

def is_palindrome(string)
  stack = Stack.new
  word = string.split("")
  array = ""
  word.each do |x|
    stack.push(x)
  end
  size = stack.count
  1.upto(size) do |y|
    letter = stack.pop
    array += letter
  end
  if array == string
    return true
  else
    return false
  end
end
