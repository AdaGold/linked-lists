# defines a node in a linkedList
class Node
  attr_reader :value
  attr_accessor :next

  def initialize(value, nextNode = nil)
    @value = value
    @next = nextNode
  end
end
