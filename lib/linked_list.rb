require './lib/node'
class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(surname)
    if @head == nil
      @head = Node.new(surname)
    else
      last_node.set_next(Node.new(surname))
    end
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
    string = "Sorry, no families here!"
    if @head != nil
      current_node = @head
      string = "The #{@head.surname} Family"
      until current_node == last_node
        current_node = current_node.next_node
        string += ", followed by the #{current_node.surname} Family"
      end
    end
    string
  end

  def prepend(surname)
    if @head == nil
      @head = Node.new(surname)
    else
      new_head = Node.new(surname)
      new_head.set_next(@head)
      @head = new_head
    end
  end

  private

  def last_node
    if @head != nil
      current_node = @head
      until current_node.next_node == nil
        current_node = current_node.next_node
      end
    end
    current_node
  end
end
