class LinkedListNode
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

def reverse_list(list, previous=nil)
  if list

    next_node = list.next_node #start with the first value in the original list (the head)
    list.next_node = previous #set the next node in the new list to equal previous which we defined as Nil in the parameter
    reverse_list(next_node, list) #run through this method again with the next value in the original list being the new first value in the reverse list. This takes advantge of the fact that the values in the linked list are explicitly connected to the previous when created.
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)
puts "---"
reverse_list(node3) 
print_values(node1) 