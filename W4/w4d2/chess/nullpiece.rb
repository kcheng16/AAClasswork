require_relative "piece"
require "singleton"

class NullPiece < Piece
  # include Singleton #its own single instance of Nullpc
  include Singleton
  def initialize
    @color = "red"
  end
end