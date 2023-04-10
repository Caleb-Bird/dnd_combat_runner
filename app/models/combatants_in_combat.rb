class CombatantsInCombat < ApplicationRecord
    belongs_to :combat
    belongs_to :combatant
end