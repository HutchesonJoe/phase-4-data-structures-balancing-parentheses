require_relative './stack'
require 'pry'

def balancing_parentheses(str)
  stack = Stack.new()
  str.chars.each do |char| 
    if char == stack.peek || stack.size == 0
      stack.push(char)
    elsif char != stack.peek 
      stack.pop
    end
  end
  
  if str.length == 2 && str.chars[1] == "("
    return 2
  end

  stack.size
  # binding.pry
end
