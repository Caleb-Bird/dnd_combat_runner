const selectedCombatantInCombat = (draft, data) => {
  switch (data.action) {
    case "selectCombatantInCombat":
      draft.selectedCombatantInCombat = data.value;
      return true
    case "unselectCombatantInCombat":
      draft.selectedCombatantInCombat = null;
      return true  
    default:
      return false
  }
}

export default selectedCombatantInCombat;
