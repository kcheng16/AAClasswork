import {connect} from 'react-redux';

import { mapStateToProps, mapDispatchToProps } from './partial_container'
import PokemonDetail from './pokemon_detail';


export default connect(mapStateToProps, mapDispatchToProps)(PokemonDetail)

