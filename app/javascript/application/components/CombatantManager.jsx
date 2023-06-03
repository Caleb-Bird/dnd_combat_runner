import React, { useContext } from 'react'
import DispatchContext from '../contexts/DispatchContext';


const CombatantManager = (props) => {
  const dispatch = useContext(DispatchContext);

  const calculateTablePrimary = (combatant_in_combat)=>{
    if (!props.selectedCombatantInCombat){return '';}
    if (combatant_in_combat.id == props.selectedCombatantInCombat.id) {
      return 'table-primary'
    }
    return '';
  }

  const clickSelect = (combatant_in_combat) => {
    return dispatch({action: toggleSelect(combatant_in_combat), value: combatant_in_combat})
  }

  const toggleSelect = (combatant_in_combat) =>{
    if (combatant_in_combat == props.selectedCombatantInCombat){
      return "unselectCombatantInCombat"
    } else {
      return "selectCombatantInCombat"
    }
  }

  return (
    <>
    <table className="table table-hover table-bordered">
      <thead className="table-dark">
        <tr>
          <th scope="col">Combatant Name</th>
          <th scope="col">Current HP</th>
          <th scope="col">Temporary HP</th>
          <th scope="col">Initiative</th>
        </tr>
      </thead>
      <tbody>
      {[...props.combatants_in_combat]
        .sort((cic1,cic2)=>(cic2.working_initiative-cic1.working_initiative))
        .map((combatant_in_combat, index) => (
          <tr onClick={() => clickSelect(combatant_in_combat)} className={calculateTablePrimary(combatant_in_combat)} key={index}>
            <td>{combatant_in_combat.combatant.name}</td>
            <td>{combatant_in_combat.current_hp}</td>
            <td>{combatant_in_combat.temporary_hp}</td>
            <td>{combatant_in_combat.working_initiative}</td>
          </tr>
        ))}
      </tbody>
    </table>     
    </>
  );
}
 
export default CombatantManager;