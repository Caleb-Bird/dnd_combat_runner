class CombatantInCombat::BulkHiddenInitiativeReset < ApplicationService
  def call
    CombatantsInCombat.all.each do |combatant_in_combat|
      combatant_in_combat.set_hidden_initiative
      combatant_in_combat.save
    end 
  end
end