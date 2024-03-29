

const combat = (draft, data) => {
  switch (data.action) {
    case "nextInitiative":
      let currentInitiative = draft.combat.current_initiative
      let currentCombatant = draft.combatants_in_combat
        .sort((cic1,cic2)=>(cic2.hidden_initiative-cic1.hidden_initiative))
        .find((combatant_in_combat) => {
          return combatant_in_combat.hidden_initiative < currentInitiative 
      });

      if (currentCombatant == null){
        currentCombatant = draft.combatants_in_combat[0]
      }
      draft.combat.current_initiative = currentCombatant.hidden_initiative
      draft.initiativeCombatant = currentCombatant.id
    default:
      return false
  }
}
export default combat
