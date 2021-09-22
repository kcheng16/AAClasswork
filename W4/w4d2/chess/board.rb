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

  def checkmate?(color)
    #check if WHITE/BLACK king
    #check if king has valid moves available
    # king.valid_moves.include?(xy)
    king_position = find_king(color)
    @board[king_position].valid_moves.empty? && in_check?(color)
  end

  def in_check?(color) 
    #when have no valid moves, wnt to check, if piece is in-chek?
    #king has valid moves && another piece wants to eat king
  end

  

    


end