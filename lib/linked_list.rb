
# Defines a node in the singly linked list
class Node
  attr_reader :data # allow external entities to read value but not write
  attr_accessor :next # allow external entities to read or write next node
  
  def initialize(value, next_node = nil)
    @data = value
    @next = next_node
  end
end

# Defines the singly linked list
class LinkedList
  def initialize
    @head = nil # keep the head private. Not accessible outside this class
  end
  
  # method to add a new node with the specific data value in the linked list
  # insert the new node at the beginning of the linked list
  def add_first(value)
    @head = Node.new(value, @head)
  end
  
  # method to find if the linked list contains a node with specified value
  # returns true if found, false otherwise
  def search(value)
    current = @head
    until current.nil?
      return true if current.data == value
      current = current.next
    end 
    return false 
  end
  
  # method to return the max value in the linked list
  # returns the data value and not the node
  def find_max
    return nil if @head.nil?
    max_data = @head.data
    curr = @head
    until curr == nil
      max_data = curr.data if curr.data > max_data
      curr = curr.next
    end 
    return max_data
  end
  
  # method to return the min value in the linked list
  # returns the data value and not the node
  def find_min
    return nil if @head.nil?
    min_data = @head.data
    curr = @head
    until curr == nil
      min_data = curr.data if curr.data < min_data
      curr = curr.next
    end 
    return min_data
  end
  
  
  # method that returns the length of the singly linked list
  def length
    length = 0
    curr = @head
    until curr.nil?
      curr = curr.next
      length += 1
    end 
    return length
  end
  
  # method that returns the value at a given index in the linked list
  # index count starts at 0
  # returns nil if there are fewer nodes in the linked list than the index value
  def get_at_index(index)
    curr = @head
    index.times do 
      curr.nil? ? return : curr = curr.next
    end 
    return curr.data
  end
  
  # method to print all the values in the linked list
  def visit
    curr = @head
    until curr.nil?
      puts curr.data
      curr = curr.next
    end 
  end
  
  # method to delete the first node found with specified value
  def delete(value)
    curr = prev = @head
    return if @head.nil? 
    @head = @head.next if @head.data == value 
    until curr.nil?
      if curr.data == value
        prev.next = curr.next
        return 
      end 
      prev = curr
      curr = curr.next
    end 
  end
  
  # method to reverse the singly linked list
  # note: the nodes should be moved and not just the values in the nodes
  def reverse
    curr = @head
    prev = nil
    until curr.nil?
      next_node = curr.next
      curr.next = prev
      prev = curr
      curr = next_node
    end 
    @head = prev
  end
  
  
  ## Advanced Exercises
  # returns the value at the middle element in the singly linked list
  def find_middle_value
    fast = slow = @head
    until fast.next.nil?
      2.times do 
        fast = fast.next if !fast.nil?
      end
      slow = slow.next
    end 
  end
  
  # find the nth node from the end and return its value
  # assume indexing starts at 0 while counting to n
  def find_nth_from_end(n)
    return if @head.nil?
    k_ahead = curr = @head
    n.times do 
      k_ahead = k_ahead.next 
      return if k_ahead.nil?
    end 
    until k_ahead.next.nil?
      k_ahead = k_ahead.next
      curr = curr.next
    end 
    return curr.data
  end
  
  # checks if the linked list has a cycle. A cycle exists if any node in the
  # linked list links to a node already visited.
  # returns true if a cycle is found, false otherwise.
  def has_cycle
    nodes_visited = {}
    curr = @head
    until curr.nil?
      if nodes_visited[curr]
        return true
      else 
        nodes_visited[curr] = true
      end 
    end 
    return false
  end
  
  
  # Additional Exercises 
  # returns the value in the first node
  # returns nil if the list is empty
  def get_first
    return @head.nil? ? nil : @head.data
  end
  
  # method that inserts a given value as a new last node in the linked list
  def add_last(value)
    curr = @head
    if curr.nil?
      @head = Node.new(value, nil) 
      return
    end 
    until curr.next == nil
      curr = curr.next
    end 
    curr.next = Node.new(value, nil)
  end
  
  # method that returns the value of the last node in the linked list
  # returns nil if the linked list is empty
  def get_last
    return if @head.nil?
    curr = @head
    until curr.next.nil?
      curr = curr.next
    end 
    return curr.data
  end
  
  # method to insert a new node with specific data value, assuming the linked
  # list is sorted in ascending order
  def insert_ascending(value)
    curr = @head
    while curr.data < value
      prev = curr
      curr = curr.next
    end 
    prev.next = Node.new(value, curr)
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
