require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Spotify queue

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    a = Node.new(data)
    # without next, we lose access to prior nodes. The previous nodes stop existing
    a.next = @head # next is instance variable on the node object. we set what used to be the head of the linked list to nowbe the node we just created
    @head = a # this a becomes the new head
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    return nil if @head.nil?

    return @head.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    length = 0
    current = @head
    until current.nil?
      length += 1
      current = current.next
    end

    return length
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    if @head.nil?
      @head = Node.new(data)
    else
      current = @head

      until current.next.nil?
        current = current.next
      end

      last = Node.new(data)
      current.next = last

    end
  end


  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    return nil if @head.nil?

    current = @head

    until current.next.nil?
      current = current.next
    end

    return current.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    if @head.nil? || index >= length
      return nil
    else
      current = @head
      index.times do
        current = current.next
      end
    end

    return current.data
  end

end
