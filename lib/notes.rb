# a = Node.new("a")
# b = Node.new("b")
# b.next = a
# c = Node.new("d")
# c.next = b
# d = Node.new("d")
# d.next = c
# e = Node.new("e")
# e.next = d
#
#
require_relative 'node'


head = Node.new("a")
# The line below will construct a new node and
#   Set it's `next` reference to the old value
#   of `head`
head = Node.new("b", head)
head = Node.new("c", head)
head = Node.new("d", head)
head = Node.new("e", head)


current = head

found = false
until current.nil?
  if current.data == "f"
    puts "Found it!"
    found = true
  end

  current = current.next
end

puts "Didn't find it" unless found