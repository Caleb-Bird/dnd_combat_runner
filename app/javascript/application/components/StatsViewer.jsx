import React, { Component } from 'react'

const StatsViewer = (props) => {
  const calculateShow = (props)=> {
    if (!props.selectedCombatantInCombat == null){
      return props.selectedCombatantInCombat
    }
    return props.combatants_in_combat.find((combatant_in_combat) => {
      return combatant_in_combat.id == props.initiativeCombatant
    });
  }

  return (
    <>
    <table className="table table-hover table-bordered">
      <thead className="table-dark">
        <tr>
          <th scope="row">{calculateShow(props)?.combatant?.name}</th>
        </tr>
      </thead>
      <body>
      <tr>
        <td>Maximum HP</td>
        <td>{calculateShow(props)?.combatant?.maximum_hp}</td>
      </tr>
      <tr>
        <td>Armor Class</td>
        <td>{calculateShow(props)?.combatant?.armor_class}</td>
      </tr>
      <tr>
        <td>Spell DC</td>
        <td>{calculateShow(props)?.combatant?.spell_dc}</td>
      </tr>
      <tr>
        <td>Strength Save</td>
        <td>{calculateShow(props)?.combatant?.strength_save}</td>
      </tr>
      <tr>
        <td>Dexterity Save</td>
        <td>{calculateShow(props)?.combatant?.dexterity_save}</td>
      </tr>
      <tr>
        <td>Constitution Save</td>
        <td>{calculateShow(props)?.combatant?.constitution_save}</td>
      </tr>
      <tr>
        <td>Intellect Save</td>
        <td>{calculateShow(props)?.combatant?.intellect_save}</td>
      </tr>
      <tr>
        <td>Wisdom Save</td>
        <td>{calculateShow(props)?.combatant?.wisdom_save}</td>
      </tr>
      <tr>
        <td>Charisma Save</td>
        <td>{calculateShow(props)?.combatant?.charisma_save}</td>
      </tr>
      <tr>
        <td>Initiative</td>
        <td>{calculateShow(props)?.combatant?.initiative}</td>
      </tr>
      </body>  
    </table>     
    </>
  )  
}
export default StatsViewer