class CombatantsInCombat < ApplicationRecord
  belongs_to :user
  belongs_to :combat
  belongs_to :combatant

  before_save :before_save_actions

  validate :visual_initiative_present
  validate :hidden_initiative_present
  validate :current_hp_present

  def positive_combat_running_integer_validation(attribute_key)
    return unless combat.running?
    return errors.add(attribute_key, "must be present") if send(attribute_key).blank?

    errors.add(attribute_key, "must be greater than or equal to 0") if send(attribute_key).negative?
  end

  def visual_initiative_present
    positive_combat_running_integer_validation(:visual_initiative)
  end

  def hidden_initiative_present   
    positive_combat_running_integer_validation(:hidden_initiative)
  end

  def current_hp_present
    positive_combat_running_integer_validation(:current_hp)
  end

  def before_save_actions
    set_hidden_initiative if visual_initiative_changed?
  end

  def set_hidden_initiative
    self.hidden_initiative = CombatantInCombat::HiddenInitiativeBuilder.call(combatant_in_combat: self)
  end
end