import React from 'react'
import CombatantManager from './CombatantManager'
import { useImmer } from "use-immer";



const CombatRun = (props) => {
  const [combatState, updateCombatState] = useImmer({
    selectedCombatantInCombat: null,
    ...props
  });

  const updateSelectedCombatantInCombat = (selectedCombatantInCombat)=>{
    updateCombatState(combatState =>{
      combatState.selectedCombatantInCombatant = selectedCombatantInCombat;
    });
  
  }
  return <>
    <div className="container">
      <div className="row">
        <div className="col">
          <CombatantManager 
            combatants_in_combat={combatState.combatants_in_combat}
            selectedCombatantInCombat = {combatState.selectedCombatantInCombat}
            updateCombatState = {updateCombatState}
            updateSelectedCombatantInCombat ={updateSelectedCombatantInCombat}
          />
        </div>
        <div className="col">
        </div>
      </div>
    </div>
  </>
}
export default CombatRun