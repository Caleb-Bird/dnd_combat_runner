import selectedCombatantInCombat from './selectedCombatantInCombat'
import combatantInCombat from './combatantInCombat'

const reducers = [
  selectedCombatantInCombat,
  combatantInCombat
]

const reducerIndex = (draft, data) => {
  reducers.forEach((reducer) => { if (reducer(draft, data)) { return; } });
}

export default reducerIndex;