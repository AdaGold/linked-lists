require_relative "node"

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # This method takes a value and
  #   adds it to the front of the
  #   list
  # Time Complexiy:
  # Space Complexity:
  def add_first(value)
    raise NotImplementedError, "Please implement add_first"
  end

  # This method returns the first value in the
  #   list without changing the list.
  # Time Complexiy:
  # Space Complexity:

  def get_first
    raise NotImplementedError, "Please implement get_first"
  end

  # This method returns the length of the list
  # Time Complexiy:
  # Space Complexity:
  def length
    raise NotImplementedError, "Please implement length"
  end

  # This method takes a value and
  #   adds it to the back of the
  #   list
  # Time Complexiy:
  # Space Complexity:
  def add_last(value)
    raise NotImplementedError, "Please implement add_last"
  end

  # This method returns the last value in the list
  # Time Complexiy:
  # Space Complexity:
  def get_last
    raise NotImplementedError, "Please implement get_last"
  end

  # This method takes an index and
  #   returns the value at that position in
  #   the list.  If it does not exist, it
  #   returns nil.
  # Time Complexiy:
  # Space Complexity:
  def get_at_index(index)
    raise NotImplementedError, "Please implement get_at_index"
  end

  # This method takes a value and
  #   removes the first node with that
  #   value from the list.  If it does
  #   not exist, it returns nil.
  # Time Complexiy:
  # Space Complexity:
  def delete(value)
    raise NotImplementedError, "Please implement delete"
  end

  # Advanced Exercises
  # This method returns the value at the
  #   middle node in the list
  # Time Complexiy:
  # Space Complexity:
  def find_middle_value
    raise NotImplementedError, "Please implement find_middle_value"
  end

  # find the nth node from the end and
  #   return its value
  # Time Complexiy:
  # Space Complexity:
  def find_nth_from_end(n)
    raise NotImplementedError, "Please implement find_nth_from_end"
  end

  # This method checks if the linked has
  #   a cycle. A cycle exists if any node
  #   in the linked list links to a node
  #   already visited.  It returns true
  #   if a cycle is found, false otherwise.
  # Time Complexiy:
  # Space Complexity:
  def has_cycle
    raise NotImplementedError, "Please implement has_cycle"
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
