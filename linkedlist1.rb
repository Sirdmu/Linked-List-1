class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

class Stack
    attr_reader :head

    def initialize(value)
        @head = Node.new(value)
    end

    # Push a value onto the stack
    def push(value)
      @head = Node.new(value, @head)
        # IMPLEMENT ME!
    end

    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop
      return_value = @head.value
      @head = @head.next_node  # I RETURN A VALUE
      return return_value
    end

    def reverse_list
      new_stack=Stack.new(pop)
      while @head
        new_stack.push(pop)
        current_node=@head
      end
      return new_stack.head
    end
end

# node1 = LinkedListNode.new(37)
# node2 = LinkedListNode.new(99, node1)
# node3 = LinkedListNode.new(12, node2)
# # p node3
# print_values(node3)

stack = Stack.new(9)
stack.push(10)
stack.push(11)
stack.push(12)
# p stack.pop
print_values(stack.head)
print_values(stack.reverse_list)