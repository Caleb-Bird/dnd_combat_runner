import selectedCombatantInCombat from './selectedCombatantInCombat'
import combatantInCombat from './combatantInCombat'
import combat from './combat'

const reducers = [
  selectedCombatantInCombat,
  combatantInCombat,
  combat
]

const reducerIndex = (draft, data) => {
  reducers.forEach((reducer) => { if (reducer(draft, data)) { return; } });
}

export default reducerIndex;