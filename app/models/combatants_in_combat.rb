class CombatantsInCombat < ApplicationRecord
    belongs_to :user
    belongs_to :combat
    belongs_to :combatant
end