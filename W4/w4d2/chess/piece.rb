require_relative "board"

class Piece

  # @queen = Queen.new
  #   @rook = Rook.new
  #   @knight = Knight.new
  def initialize(color, board, pos)

    @color = color
    @board = board  # piece = Piece.new(b, ) #new_board = Board.new
    @pos = pos #yellow 

  end


end

class NullPiece < Piece
  def initialize("red", board, )
    super

  end
end

# new_board = Board.new
# piece_1 = Piece.new("black", new_board, [1,2])
# piece_2 = Piece.new("black", new_board, [0,2])
# null_piece = NullPiece("red", new_board, [1,1])