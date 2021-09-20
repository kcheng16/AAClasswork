class KnightPathFinder
  def initialize(position) #[0, 0]
    @position = position
    @considered_positions = [position]
  end

  def self.root_node
    PolyTreeNode.new(position)
  end

  # def build_move_tree

  # end

  def self.valid_moves(position)
    col, row = position
	  possible_pos = [[col+2, row+1], [col+2, row-1], [col+1, row-2], [col-1, row-2], [col-2, row-1], [col-2, row+1], [col-1, row+2], [col+1, row+2]]
    possible_pos.select { |col,row| row >= 0 && row < 8 && col >= 0 && col < 8 } #!visited[col][row]
    
  end

  def new_move_positions(pos)
    new_moves = KnightPathFinder.valid_moves(pos)

    new_moves.each do |pos|
      if !@considered_positions.include?(pos)
        @considered_positions << pos
      end
    end
  end
end


class PolyTreeNode
  attr_accessor :parent, :children, :value

  def initialize(value)
    @parent = nil
    @children = []
    @value = value
  end

  def parent=(node)
    if self.parent != nil
      self.parent.children.delete(self)
    end
    
    @parent = node
    return nil if node.nil?
    #node = D
    #self = B
    #D.parent = B

    if !node.children.include?(self) && @parent != nil
      node.children << self
    end
  end

  def add_child(node)
    node.parent=self
  end

  def remove_child(node)
    if self.children.include?(node)
      node.parent = nil
    else
      raise "error"
    end
  end
require "byebug"

  def dfs(target)
    return self if self.value == target

    self.children.each do |child|
      search_result = child.dfs(target)

      if search_result != nil
        return search_result
      # else
      #   return nil
      end
    end
    return nil #if !self.children.include?(target)
  end

  def bfs(target)
    queue = []
    queue << self

    until queue.empty?
      first_node = queue.shift
      if first_node.value == target
        return first_node
      end
        queue += first_node.children
    end
    nil
  end
end
