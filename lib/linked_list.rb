require './lib/node'
class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(surname)
    @head = Node.new(surname)
  end

  def count
    nodes = 0
    current_node = @head
    if @head != nil
      nodes = 1
      until current_node.next_node == nil
        nodes += 1
        current_node = current_node.next_node
      end
    end
    nodes
  end

  def to_string
    "The #{@head.surname} Family"
  end
end
