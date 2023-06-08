class CombatantInCombat::HiddenInitiativeBuilder < ApplicationService
  attr_accessor :combatant_in_combat
  
  def initialize(combatant_in_combat:)
    @combatant_in_combat = combatant_in_combat
  end

  def self.initialize_param_keys
    [:combatant_in_combat]
  end

  def call
    hidden_initiative = combatant_in_combat.visual_initiative
    hidden_initiative += combatant_in_combat.combatant.dexterity_score.to_f.round(2) / 100.to_f.round(2) if combatant_in_combat.combatant.dexterity_score.present?
    hidden_initiative += combatant_in_combat.id.to_f.round(6) / 10_000.to_f.round(6)
  end
end