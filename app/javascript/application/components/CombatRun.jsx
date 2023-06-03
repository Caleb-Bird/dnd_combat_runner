import React from 'react'
import CombatantManager from './CombatantManager'
import { useImmer, useImmerReducer } from "use-immer";
import {updateCombatantInCombat} from "../reducers/selectedCombatantInCombat"

const CombatRun = (props) => {

  const [combatState, dispatch] = useImmerReducer(updateCombatantInCombat, {
    selectedCombatantInCombat: null,
    ...props
  });

  return <>
    <div className="container">
      <div className="row">
        <div className="col">
          <CombatantManager 
            combatants_in_combat={combatState.combatants_in_combat}
            selectedCombatantInCombat = {combatState.selectedCombatantInCombat}
            dispatch = {dispatch}
          />
        </div>
        <div className="col">
        </div>
      </div>
    </div>
  </>
}
export default CombatRun