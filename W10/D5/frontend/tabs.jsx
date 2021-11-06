import React from "react";

class Tabs extends React.Component{
  constructor(props){
    super(props);
    this.state = { selectedTabIndex: 0}

    this.switchTabs = this.switchTabs.bind(this)
  }

  switchTabs(e, idx){
    e.preventDefault();
    this.setState({selectedTabIndex: idx})
  }

  render() {
    return (
      <div className="tabs">
        <h1>Tabs</h1>
        
        <div className="select-tabs">
          {this.props.tabsArray.map((obj, idx) => {
            return <button onClick={(e) => this.switchTabs(e, idx)} key={idx}> {obj.title}</button>
          })}
        </div>

        <article className="tab-content">
          {this.props.tabsArray[this.state.selectedTabIndex].content}
        </article>
      </div>
      
    )
  }
}

export default Tabs