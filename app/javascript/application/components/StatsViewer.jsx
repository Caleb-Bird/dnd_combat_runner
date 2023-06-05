import React, { Component } from 'react'

const StatsViewer = (props) => {

  const calculateShow = (props)=>{
    if (!props.selectedCombatantInCombat == null){
      return props.selectedCombatantInCombat
    }
      return props.combatant_in_combat.find((combatant_in_combat) => {
        return combatant_in_combat.id == initiativeCombatant
      });
  }

  return (
    <>
    <table className="table table-hover table-bordered">
      <thead className="table-dark">
        <tr>
          <th scope="row">{calculateShow.combatant.name}</th>
        </tr>
      </thead>
      <body>
      <tr>
        <td>Maximum HP</td>
        <td>{calculateShow.combatant.maximum_hp}</td>
      </tr>
      <tr>
        <td>Armor Class</td>
        <td>{calculateShow.combatant.armor_class}</td>
      </tr>
      <tr>
        <td>Spell DC</td>
        <td>{calculateShow.combatant.spell_dc}</td>
      </tr>
      <tr>
        <td>Strength Save</td>
        <td>{calculateShow.combatant.strength_save}</td>
      </tr>
      <tr>
        <td>Dexterity Save</td>
        <td>{calculateShow.combatant.dexterity_save}</td>
      </tr>
      <tr>
        <td>Constitution Save</td>
        <td>{calculateShow.combatant.constitution_save}</td>
      </tr>
      <tr>
        <td>Intellect Save</td>
        <td>{calculateShow.combatant.intellect_save}</td>
      </tr>
      <tr>
        <td>Wisdom Save</td>
        <td>{calculateShow.combatant.wisdom_save}</td>
      </tr>
      <tr>
        <td>Charisma Save</td>
        <td>{calculateShow.combatant.charisma_save}</td>
      </tr>
      <tr>
        <td>Initiative</td>
        <td>{calculateShow.combatant.initiative}</td>
      </tr>
      </body>  
    </table>     
    </>
  )  
}
export default StatsViewer