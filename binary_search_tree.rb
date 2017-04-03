class Node
  attr_accessor :value, :next_node
  def initialize(value)
    @value = value
    @next_node = nil
  end
end

#Takes an array of data, turns it into binary tree of Node objects, in appropriate order
def build_tree(data)
end