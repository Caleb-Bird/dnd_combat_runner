const combat = (draft, data) => {
  switch (data.action) {
    case "nextInitiative":
      let currentInitiative = draft.combat.current_initiative
      let currentCombatant = draft.combatants_in_combat.find((combatant_in_combat) => {
        return combatant_in_combat.working_initiative <= currentInitiative
      });

      if (currentCombatant == null){
        currentCombatant = draft.combatants_in_combat[0]
      }
      draft.combat.current_initiative = currentCombatant.working_initiative
      draft.initiativeCombatant = currentCombatant.id
    default:
      return false
  }
}
export default combat
