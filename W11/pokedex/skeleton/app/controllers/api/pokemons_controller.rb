class Api::PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all
    render :index
  end

  def show
    @pokemon = Pokemon.find(params[:id])

    # @items = Item.all
    # @items = @items.select{|item| item.pokemon_id == @pokemon.id}
    
    # @moves = Move.all
    # @poke_moves = PokeMove.all

    # @poke_moves = @poke_moves.select do |move|
    #   move.pokemon_id == @pokemon.id
    # end

    # @moves = @moves.select do |move|
    #   @poke_moves.any?{|poke_move| poke_move.id == move.id}
    # end

    render :show
  end
end
