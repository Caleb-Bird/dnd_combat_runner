import { updateCombatantInCombat } from '../api/updateCombatantInCombat';

const combatantInCombat = (draft, data) => {
  if (!data.combatant_in_combat) { return; }
  const cic_index = draft.combatants_in_combat.findIndex(
    (combatant_in_combat) => combatant_in_combat.id == data.combatant_in_combat.id
  );
  
  switch (data.action) {
    case "updateCombatantInCombatCurrentHp":
        draft.combatants_in_combat[cic_index].current_hp = parseInt(data.value);
        updateCombatantInCombat(draft.combatants_in_combat[cic_index]);
        return true
    case "updateCombatantInCombatTempHp":
        draft.combatants_in_combat[cic_index].temporary_hp = parseInt(data.value);
        return true
    default:
      return false
  }
}

export default combatantInCombat;

