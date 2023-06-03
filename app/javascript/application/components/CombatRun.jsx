import React from 'react'
import CombatantManager from './CombatantManager'
import { useImmerReducer } from "use-immer";
import reducerIndex from "../reducers/reducerIndex"
import { DispatchProvider } from '../contexts/DispatchContext';

const CombatRun = (props) => {
  const [combatState, dispatch] = useImmerReducer(reducerIndex, {
    selectedCombatantInCombat: null,
    ...props
  });

  return (
    <DispatchProvider value={dispatch}>
      <div className="container">
        <div className="row">
          <div className="col">
        
              <CombatantManager 
                combatants_in_combat={combatState.combatants_in_combat}
                selectedCombatantInCombat = {combatState.selectedCombatantInCombat}
              />

          </div>
          <div className="col">
          </div>
        </div>
      </div>
    </DispatchProvider>
  )
}
export default CombatRun