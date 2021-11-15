import React from "react"
import { Link } from "react-router-dom";

const PokemonIndexItem = (props) => {
  return(
    <li key={props.pokemonId}>
      <Link to={`/pokemon/${props.pokemonId}`}>
        {props.pokemon.name}
        <img src={props.pokemon.imageUrl} />
      </Link>
    </li>
  )
}

export default PokemonIndexItem