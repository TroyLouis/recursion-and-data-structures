class LinkedList
  def initialize(head = nil)
    @head = head
  end

  def append(value)
    if @head == nil
      @head = Node.new(value)
    else
      current_node = @head
      new_node = Node.new(value)
      while current_node.next_node != nil
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
    end
  end

  def prepends(value)
    if @head == nil
      @head = Node.new(value)
    else
      new_head = Node.new(value)
      new_head.next_node = @head
      @head = new_head
    end
  end

  def size
    count = 1
    return 0 if @head == nil
    return 1 if @head.next_node == nil 
    current_node = @head
    while current_node.next_node != nil
      current_node = current_node.next_node
      count += 1
    end
    count
  end

  def head
    current_head = @head
    next_head = @head.next_node
    @head.next_node = nil
    @head
  end

  def tail
    current_node = @head
    while current_node.next_node != nil
      current_node = current_node.next_node
      if current_node.next_node == nil
        return current_node
      end
    end
  end

  def at(index)
    count = 0
    size = self.size
    message = "Pick again, the length is #{size}."
    return message if index > size
    return self.head if index == 0
    return self.tail if index == size
    current_node = @head
    while count < index
      current_node = current_node.next_node
      count += 1
      if count == index
        current_node.next_node = nil
      end
    end
    current_node
  end

  def pop
    current_node = @head
    while current_node.next_node.next_node != nil
      current_node = current_node.next_node
    end
    last = current_node.next_node
    current_node.next_node = nil
    @head
   end
 
   def contains(num)
    current_node = @head
    return true if current_node.value == num
    while current_node.next_node != nil
      current_node = current_node.next_node
      return true if current_node.value == num
    end
    return false
   end

   def find(value)
    current_node = @head
    index = 0
    return index if current_node.value == value
    while current_node.next_node != nil
      index += 1
      current_node = current_node.next_node
      if current_node.value == value
        return index
      end
    end
      nil
   end

end

class Node 
  attr_accessor :value, :next_node
  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

list = LinkedList.new
list.append(7)
list.append(4)
list.append(5)
list.prepends(8)
p list.find(12)
