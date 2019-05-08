require_relative "node"

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def add_first(value)
    if @head.nil?
      @head = Node.new(value, nil)
    else
      @head = Node.new(value, @head)
    end
  end

  def get_first()
    if @head.nil?
      return nil
    else
      return @head.data
    end
  end

  def length
    count = 0
    current = @head
    until current.nil?
      count += 1
      current = current.next
    end

    return count
  end

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

      return current.data
    end
  end

  def get_at_index(index)
    count = index
    current = @head
    if @head.nil?
      return nil
    else
      while count > 0 && !current.nil?
        count -= 1
        current = current.next
      end
      return count > 0 ? nil : current.data
    end
  end
end
