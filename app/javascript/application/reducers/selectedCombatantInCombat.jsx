export const updateCombatantInCombat = (draft, data) => {
  switch (data.action) {
    case "selectCombatantInCombat":
      draft.selectedCombatantInCombat = data.value;
      return 
    default:
      return 
  }
}
