require_relative 'node'

class LinkedList
  def initialize
    @head = nil
  end

  def addFirst(value)
    if @head.nil?
      @head = Node.new(value, nil)
    else
      @head = Node.new(value, @head)
    end
  end

  def getFirst()
    if @head.nil?
      return nil
    else
      return @head.data
    end
  end
end
