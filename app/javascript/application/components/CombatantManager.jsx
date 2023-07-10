import React, { useContext, useEffect } from 'react'
import DispatchContext from '../contexts/DispatchContext';
import { useImmer } from 'use-immer';


const CombatantManager = (props) => {
  const dispatch = useContext(DispatchContext);

  const calculateTableHightlight = (combatant_in_combat)=>{
    if (combatant_in_combat.id == props.initiativeCombatant){
      return 'table-secondary'
    }
    if(combatant_in_combat.current_hp <= 0 ){
      return 'table-danger'
    }
    if (!props.selectedCombatantInCombat){return '';}
    if (combatant_in_combat.id == props.selectedCombatantInCombat) {
      return 'table-primary'
    }
    return '';
  }

  const clickSelect = (combatant_in_combat) => {
    return dispatch({action: toggleSelect(combatant_in_combat), value: combatant_in_combat.id })
  }

  const toggleSelect = (combatant_in_combat) =>{
    if (combatant_in_combat.id == props.selectedCombatantInCombat){
      return "unselectCombatantInCombat"
    } else {
      return "selectCombatantInCombat"
    }
  }

  const changeCurrentHp = (e, combatant_in_combat) => {
    return dispatch({
      action: 'updateCombatantInCombatCurrentHp',
      value: e.target.value,
      combatant_in_combat: combatant_in_combat
    });
  }

  const changeTemporaryHp = (e, combatant_in_combat) => {
    return dispatch({
      action: "updateCombatantInCombatTempHp",
      value: e.target.value,
      combatant_in_combat: combatant_in_combat
    });
  }

  const changePotentialDamage = (e, combatant_in_combat) => {
    return dispatch({
      action: "updateCombatantInCombatPotentialDamage",
      value: e.target.value,
      combatant_in_combat: combatant_in_combat
    });
  }
  const damageCombatantInCombat = (e, combatant_in_combat) => {
    if (combatant_in_combat.potential_damage == null ){
      return
    } else {
     return dispatch({
      action: "damageCombatantInCombat",
      value: combatant_in_combat.potential_damage,
      combatant_in_combat: combatant_in_combat
    })};
  }
  return (
    <>
    <table className="table table-hover table-bordered">
      <thead className="table-dark">
        <tr>
          <th scope="col">Combatant Name</th>
          <th scope="col">Current HP</th>
          <th scope="col">Temporary HP</th>
          <th scope="col">Damage</th>
          <th></th>
          <th scope="col">Initiative</th>
          <th scope="col">Stats</th>
          
        </tr>
      </thead>
      <tbody>
      {[...props.combatants_in_combat]
        .sort((cic1,cic2)=>(cic2.visual_initiative-cic1.visual_initiative))
        .map((combatant_in_combat, index) => (
          <tr className={calculateTableHightlight(combatant_in_combat)} key={index}>
            <td>{combatant_in_combat.combatant.name}</td>
            <td><input className="form-control form-control-sm" type="number" onChange={(e) => changeCurrentHp(e, combatant_in_combat)} value={combatant_in_combat.current_hp|| null}></input></td>
            <td><input className="form-control form-control-sm" type="number" onChange={(e) => changeTemporaryHp(e, combatant_in_combat)} value={combatant_in_combat.temporary_hp || null}></input></td>
            <td><input className="form-control form-control-sm" type="number" onChange={(e) => changePotentialDamage(e, combatant_in_combat)} value={combatant_in_combat.potential_damage || null} ></input></td>
            <td><button onClick={(e) => damageCombatantInCombat(e, combatant_in_combat, combatant_in_combat.potential_damage)} className="btn btn-danger" >Damage</button></td>
            <td>{combatant_in_combat.visual_initiative}</td>
            <td><button onClick={() => clickSelect(combatant_in_combat)} className="btn btn-outline-secondary" >Stats</button></td>
          </tr>
        ))}
      </tbody>
    </table>     
    </>
  );
}
 
export default CombatantManager;