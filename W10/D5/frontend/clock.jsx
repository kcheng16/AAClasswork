import React from "react"

class Clock extends React.Component{
  constructor(){
    super();
    this.state = { time: new Date() }; 
    this.tick = this.tick.bind(this);
    this.interval;
  }

  componentDidMount(){
    this.interval = setInterval(this.tick, 1000);
  }

  componentWillUnmount(){
    clearInterval(this.interval);
  }

  tick(){
    this.setState({time: new Date()});
  }

  render(){
    return (
      <h1 id="time">
        <ul>
          <li>
            <h2>Time: </h2> {this.state.time.getHours()}:{this.state.time.getMinutes()}:{this.state.time.getSeconds()}
          </li>
          <li>
          <h2>Date:</h2> {this.state.time.toDateString()}
          </li>
        </ul>
      </h1>
    )
  }
}

export default Clock;