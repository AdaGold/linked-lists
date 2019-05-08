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
end
