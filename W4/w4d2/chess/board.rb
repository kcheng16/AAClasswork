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

  def valid_pos?(pos)
    @piece.valid_move.include?(pos)
  end

  def add_piece(piece, pos)
    @board[pos]= piece
  end

  def checkmate?(color)
    #check if king has valid moves available
    
  end

  def in_check?(color) #if in the valid pos

  end

  def find_king(color)
    (0...@board.length).each do |i|
      (0...@board.length).each do |j|
        if @board[i][j].color == :♔
          return [i,j] 
        end
      end
    end
    return nil   
  end

    

  
end