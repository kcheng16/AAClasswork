import React from "react"
import { Link } from "react-router-dom";

const PokemonIndexItem = (props) => {
  return(
    <li>
      <Link to={`/pokemon/${props.pokemon.id}`}>
        {props.pokemon.name}
        <img src={props.pokemon.imageUrl} />
      </Link>
    </li>
  )
}

export default PokemonIndexItem