import React, { useEffect } from 'react'
import CombatantManager from './CombatantManager'
import { useImmerReducer } from "use-immer";
import reducerIndex from "../reducers/reducerIndex"
import { DispatchProvider } from '../contexts/DispatchContext';
import { ToastContainer } from 'react-toastify';

import 'react-toastify/dist/ReactToastify.css';
import CombatTools from './CombatTools';
import StatsViewer from './StatsViewer';



const CombatRun = (props) => {
  const [combatState, dispatch] = useImmerReducer(reducerIndex, {
    selectedCombatantInCombat: null,
    initiativeCombatant: null,
    ...props
  });

  useEffect(() => {
    dispatch({ action: "nextInitiative" })
  }, []);
  
  return (
    <DispatchProvider value={dispatch}>
      <div className="container">
        <div className="row">
          <div className="col-sm-8">
        
              <CombatantManager 
                combatants_in_combat={combatState.combatants_in_combat}
                selectedCombatantInCombat = {combatState.selectedCombatantInCombat}
                initiativeCombatant = {combatState.initiativeCombatant}
              />
          </div>
          <div className="col-lg-4">
            <div className="row row-cols-1">
              <div className="col">
                <CombatTools
                  combatants_in_combat={combatState.combatants_in_combat}
                  combat={combatState.combat}
                />
              </div>
              <div className="col">
                <StatsViewer
                  combatants_in_combat={combatState.combatants_in_combat}
                  selectedCombatantInCombat = {combatState.selectedCombatantInCombat}
                  initiativeCombatant = {combatState.initiativeCombatant}
                />
              </div>
            </div>  
          </div>
        </div>
        <a href={`/combats/${props.combat.id}/setup`}>
          <button className="btn btn-primary" >Combat Setup</button>
        </a>
        <ToastContainer/>
      </div>
    </DispatchProvider>
  )
}
export default CombatRun

