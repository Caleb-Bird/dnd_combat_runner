import { updateCombatantInCombat } from '../api/updateCombatantInCombat';

const combatantInCombat = (draft, data) => {
  if (!data.combatant_in_combat) { return; }
  const cic_index = draft.combatants_in_combat.findIndex(
    (combatant_in_combat) => combatant_in_combat.id == data.combatant_in_combat.id
  );
  switch (data.action) {
    case "updateCombatantInCombatCurrentHp":
        draft.combatants_in_combat[cic_index].current_hp = parseInt(data.value);
        if(draft.combatants_in_combat[cic_index].current_hp < 0 ){
          draft.combatants_in_combat[cic_index].current_hp = 0
        }
        updateCombatantInCombat(draft.combatants_in_combat[cic_index]);
        return true
    case "updateCombatantInCombatTempHp":
        draft.combatants_in_combat[cic_index].temporary_hp = parseInt(data.value);
        updateCombatantInCombat(draft.combatants_in_combat[cic_index]);
        return true
    case "updateCombatantInCombatPotentialDamage":
        draft.combatants_in_combat[cic_index].potential_damage = parseInt(data.value);
        updateCombatantInCombat(draft.combatants_in_combat[cic_index]);
        return true   
    case "damageCombatantInCombat":
      const damageValue = parseInt(data.value);
        if (draft.combatants_in_combat[cic_index].temporary_hp >= damageValue) {
          draft.combatants_in_combat[cic_index].temporary_hp -= damageValue; 
        } else { 
          draft.combatants_in_combat[cic_index].current_hp -= damageValue - draft.combatants_in_combat[cic_index].temporary_hp;
          if(draft.combatants_in_combat[cic_index].current_hp < 0){
            draft.combatants_in_combat[cic_index].current_hp = 0
            }
          draft.combatants_in_combat[cic_index].temporary_hp = 0
        }
        draft.combatants_in_combat[cic_index].potential_damage = null
        updateCombatantInCombat(draft.combatants_in_combat[cic_index]);
        return true
      case "updatePotentialDamage":
       draft.combatants_in_combat.forEach((combatant_in_combat) => {
        if (combatant_in_combat.id === data.combatant_in_combat.id) {
          combatant.potential_damage = data.value
        }
      });
      return true
    default:
      return false
  }
}

export default combatantInCombat;

