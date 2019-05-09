require_relative "node"

class LinkedList
  def initialize
    @head = nil
  end

  # This method takes a value and
  #   adds it to the front of the
  #   list
  # Time Complexiy:
  # Space Complexity:
  def add_first(value)
    node = Node.new(value, @head)
    @head = node
    # raise NotImplementedError, "Please implement add_first"
  end

  # This method returns the first value in the
  #   list without changing the list.
  # Time Complexiy:
  # Space Complexity:

  def get_first
    return @head.value if @head != nil
    # raise NotImplementedError, "Please implement get_first"

  end

  # This method returns the length of the list
  # Time Complexiy:
  # Space Complexity:
  def length
    count = 0
    current = @head

    until current.nil?
      count += 1
      current = current.next
    end

    return count
  end

  # This method takes a value and
  #   adds it to the back of the
  #   list
  # Time Complexiy:
  # Space Complexity:
  def add_last(value)
    current = @head
    newNode = Node.new(value, nil)

    if current.nil?
      @head = newNode
    else
      until current.next.nil?
        current = current.next
      end

      current.next = newNode
    end
  end

  def get_last()
    if @head.nil?
      return nil
    else
      current = @head
      until current.next.nil?
        current = current.next
      end

      return current.value
    end
  end

  # This method takes an index and
  #   returns the value at that position in
  #   the list.  If it does not exist, it
  #   returns nil.
  # Time Complexiy:
  # Space Complexity:
  def get_at_index(index)
    current_index = 0

    current = @head
    while current_index < index && !current.nil?
      current_index += 1
      current = current.next
    end

    return nil if current.nil?

    return current.value
    # raise NotImplementedError, "Please implement get_at_index"
  end

  # This method takes a value and
  #   removes the first node with that
  #   value from the list.  If it does
  #   not exist, it returns nil.
  # Time Complexiy:
  # Space Complexity:
  def delete(value)
    return nil if @head.nil?

    if @head.value == value
      @head = @head.next
      return 0
    end

    current = @head
    index = 1
    while current.next != nil && current.next.value != value
      index += 1
      current = current.next
    end
    if current.next == nil
      return nil
    end

    current.next = current.next.next
    return index
  end

  # Advanced Exercises
  # This method returns the value at the
  #   middle node in the list
  # Time Complexiy:
  # Space Complexity:
  def find_middle_value
    return nil if @head.nil?

    len = self.length - 1
    len /= 2

    current = @head

    while len > 0
      len -= 1
      current = current.next
    end

    return current.value
  end

  # find the nth node from the end and
  #   return its value
  # Time Complexiy:
  # Space Complexity:
  def find_nth_from_end(n)
    len = self.length - 1
    count = len - n

    return nil if @head.nil? || count < 0

    current = @head
    while current != nil && count > 0
      current = current.next
      count -= 1
    end

    return current.value
    # raise NotImplementedError
  end

  # This method checks if the linked has
  #   a cycle. A cycle exists if any node
  #   in the linked list links to a node
  #   already visited.  It returns true
  #   if a cycle is found, false otherwise.
  # Time Complexiy:
  # Space Complexity:
  def has_cycle
    current = @head

    while current != nil
      current = current.next
      return true if current == @head
    end
    return false
    # raise NotImplementedError
  end

  # Helper method for tests
  # Creates a cycle in the linked list for testing purposes
  # Assumes the linked list has at least one node
  def create_cycle
    return if @head == nil # don't do anything if the linked list is empty

    # navigate to last node
    current = @head
    while current.next != nil
      current = current.next
    end

    current.next = @head # make the last node link to first node
  end
end
