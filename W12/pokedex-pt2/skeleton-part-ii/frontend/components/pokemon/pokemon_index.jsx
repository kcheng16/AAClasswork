import React from 'react';
import PokemonIndexItem from './pokemon_index_item';

class PokemonIndex extends React.Component{
  constructor(props){
  super(props)
  }
  
  componentDidMount(){
  this.props.requestAllPokemon()
  }
  
  render(){
    return (
    <section className="pokedex">
      <ul>
      {this.props.pokemon.map((pokemon) => (
        // <li className="pokemon-index-item">
        //   <span>{poke.id}</span>
        //   <img src={poke.imageUrl}/>
        //   <span>{poke.name}</span>
        // </li>
        <PokemonIndexItem key={pokemon.id} pokemon={pokemon} />
      ))}
      </ul>
    </section>
    )
  }
  }
  
  
  
  export default PokemonIndex;