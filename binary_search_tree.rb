class Node
  attr_accessor :value, :next_node, :parent_node, :child_node
  def initialize(value)
    @value = value
    @next_node = nil
    @child_node = nil
    @parent_node = nil
  end
end

#Takes an array of data, turns it into binary tree of Node objects, in appropriate order
def build_tree(data)
  data.each do |value|
    value = Node.new(value)
  end
  puts data
  puts data[1].class
end

#Searches the tree for a target value, returns the node at which value is located
def breadth_first_search(value)
end

#Searches the tree for a target value, returns node at which value is located
def depth_first_search(value)
end

#Recursive version of #depth_first_search
def dfs_rec
end

build_tree([1, 3, 4, 4, 5, 7, 7, 8, 9, 9, 23, 67, 324, 6345])