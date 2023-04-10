class UpdateCombatantsField < ActiveRecord::Migration[7.0]
  def change
    rename_column :combatants_in_combats, :combatants_id, :combatant_id
  end
end
