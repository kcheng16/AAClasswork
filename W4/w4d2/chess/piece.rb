# require_relative "board"

class Piece

  def initialize(color, board, pos)

    @color = color
    @board = board  # piece = Piece.new(b, ) #new_board = Board.new
    @pos = pos 

  end


end

# class NullPiece < Piece
#   # include Singleton #its own single instance of Nullpc

#   def initialize

#   end
# end

# new_board = Board.new
# piece_1 = Piece.new("black", new_board, [1,2])
# piece_2 = Piece.new("black", new_board, [0,2])
# null_piece = NullPiece("red", new_board, [1,1])