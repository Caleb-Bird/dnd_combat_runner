import React, { Component } from 'react'
import CombatantManager from './CombatantManager'

class CombatRun extends Component {
  state = {}

  constructor (props) {
    super(props);
  }

  render() { 
    return (
      <>
      <div className="container">
        <div className="row">
          <div className="col">
            <CombatantManager {...this.props}> </CombatantManager>
          </div> 
          <div className="col">
          
          </div>
        </div>
      </div>
  
      </>
    );
  }
}

export default CombatRun