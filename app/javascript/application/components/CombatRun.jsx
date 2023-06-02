import React from 'react'
import CombatantManager from './CombatantManager'

const CombatRun = (props) => (
  <>
    <div className="container">
      <div className="row">
        <div className="col">
          <CombatantManager {...props}> </CombatantManager>
        </div> 
        <div className="col">
        </div>
      </div>
    </div>
  </>
)

export default CombatRun