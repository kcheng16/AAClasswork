@pokemons.each do |poke|
  json.set! poke.id do #{ pokeid: value }
    json.extract! poke, :id, :name #{ poke-id: id, poke-name: name }
    json.image_url asset_path("pokemon_snaps/#{poke.image_url}")
  end
end