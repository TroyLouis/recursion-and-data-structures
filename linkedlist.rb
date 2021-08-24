class LinkedList

  attr_accessor :list

  def initialize()
    @list = []
  end

  def append(value)
    node = Node.new(value)
    @list << node
  end

  def prep(value)
    node = Node.new(value)
    @list.unshift(node)
    node.next_node = @list[1]
  end

  def size
    @list.length
  end
  
  def head
    @list.first
  end

  def tail
    @list[-1]
  end

  def at(index)
    @list[index]
  end

  def pop
    @list.pop
  end

  def contains?(value)
  end

end

class Node 
  attr_accessor :value, :next_node
  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end

end

list = LinkedList.new()
list.append(6)
list.append(4)
list.prep(2)
p list

