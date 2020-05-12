require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - 0(1)
  # Space complexity - 0(1)
  def add_first(data)
    # create new node
    new_node = Node.new(data)
    # set next attribute
    new_node.next = @head
    # reassign head to first node
    @head = new_node
  end
  
  # Time complexity - 0(1)
  # Space complexity - 0(1)
  def get_first
    if @head.nil?
      return nil
    else
    return @head.data
    end
  end

  # Time complexity - 0(n) b/c n is the number of nodes in the list...the length...
  # Space complexity - 0(1) b/c of one variable...length...
  def length
    return 0 if @head.nil?
    current_node = @head
    length = 0

    while (!current_node.nil?)
      current_node = current_node.next
      length += 1
    end

    return length
  end

  # Time complexity - 0(n) where n the length
  # Space complexity - 0(1)
  def add_last(data)
    return nil if @head
    new_node = Node.new(data)
    current_node = @head
    @head = new_node

    if current_node == nil
      return nil
    end

    while (!current_node.next.nil?)
      current_node = current_node.next
    end
  end

  # Time complexity - 0(n) where n is the length of the list
  # Space complexity - 0(1)
  def get_last
    return nil if @head.nil?
    current_node = @head
    
    while (current_node.next)
      current_node = current_node.next
    end

    return current.data

  end
  
  # Time complexity - 0(n) where n is the length (worst case)
  # Space complexity - 0(1) 
  def get_at_index(index)
    return nil if @head.nil?
    current_node = @head
    index_position = 0

    while (index_position < index)
      index_position += 1
      current_node = current_node.next
    end
     
    return current_node.data
  end

end
