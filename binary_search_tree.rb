class Node
  attr_accessor :value, :parent_node, :right_node, :left_node
#create node, initializes w/ value of nil unless value present in arguments
  def initialize(value = nil)
    @value = value
  end
#returns value of Node instance
  def value
    if(@value == nil)
      puts "nil"
    else
      @value
    end
  end

end

class Binary_Tree

#Assigns root the 0th array value, then iterates all array values to assign them nodes in the tree
  def build_tree(data)
    @root = Node.new(data[0])

    data.each_with_index do |element, index|
      if(index == 0)
        next
      end
      puts "Passing into create_node"
      create_node(element)
    end
  end

#Assigns node to correct place in tree (parent or child position)
#Uses @root if no argument is present for evaluation
  def create_node(element, node = @root)
    puts "Entering create_node, the value of element is #{element}. The value of node is #{node.value}"
    if element < node.value && node.left_node == nil
      puts "Element: #{element}. Comparing if element is less than root, left node empty"
      puts "Node: #{node.value}, Left_node: #{node.left_node.class}"
      node.left_node = Node.new(element)
      node.left_node.parent_node = node
      puts "Left_node: #{node.left_node.value}, Parent_node: #{node.left_node.parent_node.value}"
    elsif element >= node.value && node.right_node == nil
      puts "Element: #{element}. Comparing if element is greater than or equal to root, right node empty"
      puts "Node: #{node.value}, right_node: #{node.right_node.class}, left_node: #{node.left_node.class}"
      node.right_node = Node.new(element)
      node.right_node.parent_node = node
      puts "Right_node: #{node.right_node.value}, Parent_node: #{node.right_node.parent_node.value}"
    elsif element < node.value && node.left_node != nil
      puts "Element: #{element},Comparing if element is less than root, left node full"
      puts "Node: #{node.value}, Left_node: #{node.left_node.class}, right_node: #{node.right_node.class}"
      create_node(element, node.left_node)
    elsif element >= node.value && node.right_node != nil
      puts "Element: #{element}Comparing if element is greater than or equal to root, right node full"
      puts "Node: #{node.value}, Right_node: #{node.right_node.class}, Left_node: #{node.left_node.class}"
      create_node(element, node.right_node)
    end
  end
=begin
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
  def depth_first_search(value, node = @root)
    if(node == value)
      puts node
    end
    if(node.left_node)
      depth_first_search(value, node.left_node)
    end
    if(node.right_node)
      depth_first_search(value, node.right_node)
    end
  end

#Recursive version of #depth_first_search
  def dfs_rec(val)
    depth_first_search(val)
  end
=end
end


t = Binary_Tree.new
t.build_tree([2, 1, 3, 4, 5, 7, 7, 8, 9, 9, 23, 67, 324, 6345])
#t.breadth_first_search(2)
#t.depth_first_search(2)
#t.dfs_rec(2)