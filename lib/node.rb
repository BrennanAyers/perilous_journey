class Node
  attr_reader :surname
  def initialize(surname)
    @surname = surname
  end

  def next_node
    nil
  end
end
