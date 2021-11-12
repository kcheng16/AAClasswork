
json.set! 'pokemon' do 
  json.extract! @pokemon, :id, :name, :attack, :defense, :poke_type
  json.image_url asset_path(("pokemon_snaps/#{@pokemon.image_url}"))
end

json.set! 'items' do 
  @pokemon.items.each do |item|
    json.set! item.id do
      json.extract! item, :id, :name, :price, :happiness, :pokemon_id
      json.image_url asset_path(("#{item.image_url}"))
    end
  end
end

json.set! 'moves' do 
  @pokemon.moves.each do |move|
    json.set! move.id do
      json.extract! move, :id, :name
    end
  end
end

# @items.each do |item|
#   json.set! 'items' do
#     json.set! item.id do
#       json.extract! item, :id, :name, :price, :happiness, :pokemon_id
#       json.image_url asset_path(("#{item.image_url}"))
#     end
#   end
# end


# @moves.each do |move|
#   json.set! 'moves' do
#     json.set! move.id do
#       json.extract! move, :id, :name
#     end
#   end
# end

