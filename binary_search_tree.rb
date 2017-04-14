class Node
  attr_accessor :value, :parent_node, :right_node, :left_node
  def initialize(value = nil)
    @value = value
  end
end

class Binary_Tree

#Takes an array of data, turns it into binary tree of Node objects, in appropriate order
  def build_tree(data)
    @root = Node.new(data[0])
    puts @root.value
    data.each do |element|
      create_node(element)
    end
  end

  def create_node(value)
    node = Node.new(value)
    if(node.value < @root.value) && (@root.left_node == nil)
      @root.left_node = node
    elsif(node.value >= @root.value) && (@root.right_node == nil)
      @root.right_node = node
    end
    puts @root.left_node
    puts @root.right_node
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

end


t = Binary_Tree.new
t.build_tree([1, 0, 3])
#, 4, 5, 7, 7, 8, 9, 9, 23, 67, 324, 6345])