class AddCombatantsInCombatManyToMany < ActiveRecord::Migration[7.0]
  def change
    add_reference :combatants_in_combats, :combat, foreign_key: true
    add_reference :combatants_in_combats, :combatants, foreign_key: true
  end
end
