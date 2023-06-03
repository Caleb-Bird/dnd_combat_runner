import selectedCombatantInCombat from './selectedCombatantInCombat'

const reducers = [
  selectedCombatantInCombat,
]

const reducerIndex = (draft, data) => {
  reducers.forEach((reducer) => { if (reducer(draft, data)) { return; } });
}

export default reducerIndex;