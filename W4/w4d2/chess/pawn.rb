require_relative "piece"

class Pawn < Piece
  #attr_reader :pos, :color, :board
  
  def initialize(color, board, pos)
    super(color, board, pos)
    @symbol = :P
  end

  def move_dirs
    #initialization : pawn white at row 1, black at row 6
    if color == "W"
      return [1+pos[0],0]
    elsif color == "B"
      return [pos[0]-1,0]
    else 
      raise "pawn move_dirs errors" #error purpose
    end
  end 

  #

end