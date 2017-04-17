class Node
  attr_accessor :value, :parent_node, :right_node, :left_node
  def initialize(value = nil)
    @value = value
  end
  def value
    return @value
  end
end

class Binary_Tree

#Takes an array of data, turns it into binary tree of Node objects, in appropriate order
  def build_tree(data)
    @root = Node.new(data[0])
    data.each do |element|
      if(element == 0)
        next
      end
      create_node(element)
    end
  end

  def create_node(element, node = @root)
    if(element < node.value) && (node.left_node == nil)
      node.left_node = Node.new(element)
      node.left_node.parent_node = node
    elsif(element > node.value) && (node.right_node == nil)
      node.right_node = Node.new(element)
      node.right_node.parent_node = node
    elsif(element < node.value) && (node.left_node != nil)
      new_node = node.left_node
      create_node(element, new_node)
    elsif(element > node.value) && (node.right_node != nil)
      new_node = node.right_node
      create_node(element, new_node)
    elsif(element == node.value) && (node.right_node != nil)
      new_node = node.right_node
      create_node(element, new_node)
    end
    puts node.left_node
    puts node.right_node
  end

#Searches the tree for a target value, returns the node at which value is located
  def breadth_first_search(value)
    queue = [@root]
    queue.each do |node|
      if(node.value == value)
        puts node.value
      end
      if(node.left_node != nil)
        queue << node.left_node
      end
      if(node.right_node != nil)
        queue << node.right_node
      end
      return nil
    end
  end

#Searches the tree for a target value, returns node at which value is located
  def depth_first_search(value)
  end

#Recursive version of #depth_first_search
  def dfs_rec
  end

end


t = Binary_Tree.new
t.build_tree([2, 1, 3])
#, 4, 5, 7, 7, 8, 9, 9, 23, 67, 324, 6345])
t.breadth_first_search(1)