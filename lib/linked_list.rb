require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - ?
  # Space complexity - ?
  def add_first(data)
    new_node = Node.new(data)
    new_node.next = @head
    @head = new_node
    return @head.data
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_first
    if @head
      return @head.data
    end
    return nil
  end

  # Time complexity - ?
  # Space complexity - ?
  def length
    count = 0
    current = @head
    while current != nil
      count += 1
      current = current.next
    end

    return count
  end

  # Time complexity - ?
  # Space complexity - ?
  def add_last(data)
    current = @head
    if @head == nil
      current = Node.new(data)
      @head = current
      return
    end
    until current == nil
      previous = current
      current = current.next
    end
    previous.next = Node.new(data)
    return
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_last
    current = @head
    if @head == nil
      return nil
    end
    until current == nil
      previous = current
      current = current.next
    end
    return previous.data

  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)
    count = 0
    current = @head
    if @head == nil
      return nil
    end
    until count == index
      count += 1
      current = current.next
    end
    if current == nil
      return nil
    end
    return current.data
  end
end
