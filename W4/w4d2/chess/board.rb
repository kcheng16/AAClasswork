require_relative "piece"
require_relative "nullpiece"

class Board
  attr_accessor :grid, :piece

  def initialize
    @grid = Array.new(8) {Array.new(8)}    
    #@piece = Piece.new #current pos 
    @piece = Piece.new("B",self,[0,0])
    @grid[0][0] = @piece
    @grid[0][1] = NullPiece.instance
    # @piece2 = Piece.new("B",self,[0,1])
    # @piece3 = Piece.new("B",self,[0,2])
    # @piece4 = Piece.new("B",self,[0,3])
    # @piece = Piece.new("B",self,[0,4])
    # @piece = Piece.new("B",self,[0,5])
    # @piece = Piece.new("B",self,[0,6])
    # @piece = Piece.new("B",self,[0,7])
    # @piece = Piece.new("W",self,[6,0])
    # @piece = Piece.new("W",self,[6,1])
    # @piece = Piece.new("W",self,[6,2])
    # @piece = Piece.new("W",self,[6,3])
    # @piece = Piece.new("W",self,[6,4])
    # @piece = Piece.new("W",self,[6,5])
    # @piece = Piece.new("W",self,[6,6])
    # @piece = Piece.new("W",self,[6,7])
  end

  #def add_piece

  # i = 0 , 1  => row 1, row 2, 
             # => row 7, row 8, (length -1 -i)=6 , (length-1-i)
  #def self.initial_populate


    
  #   #current pos 
  #   i = 0
  #   while i < 2
  #     @grid[i]=@grid[i].map {|ele| ele = NullPiece.instance}
  #     @grid[7-i] = @grid[7-i].map {|ele| ele = NullPiece.instance}
  #     i += 1
  #   end

  #end
  
  # def [](pos)
  #   row = pos[0]
  #   col = pos[1]
  #   @grid[row][col] 
  # end

  # def []=(pos, val)
  #   row = pos[0]
  #   col = pos[1]
  #   @grid[row][col]= val
  # end


  # def valid_pos?(pos)
  #   @piece.valid_move.include?(pos)
  # end

  # def add_piece(piece, pos)
  #   @board[pos]= piece
  # end

  # def find_king(color)
  #   (0...@board.length).each do |i|
  #     (0...@board.length).each do |j|
  #       if @board[i][j].color == :♔
  #         return [i,j] 
  #       end
  #     end
  #   end
  #   return nil   
  # end

  # def checkmate?(color)
  #   #check if WHITE/BLACK king
  #   #check if king has valid moves available
  #   # king.valid_moves.include?(xy)
  #   king_position = find_king(color)
  #   @board[king_position].valid_moves.empty? && in_check?(color)
  # end

  # def in_check?(color) 
  #   #when have no valid moves, wnt to check, if piece is in-chek?
  #   #king has valid moves && another piece wants to eat king
  # end

  def move_piece(start_pos, end_pos)
    if @grid[start_pos]  

  end
 
end

new_board = Board.new
p new_board
#p new_board.piece.test_board