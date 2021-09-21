require_relative "piece"

class Board

  def initialize
    @board = Array.new(8) {Array.new(8)}
    @piece = Piece.new
  end

  def [](pos)
    @board[pos[0][pos[1]]
  end

  def []=(pos, val)
    @board[pos[0][pos[1]] = val
  end

  
end