class HiddenInitiative < ActiveRecord::Migration[7.0]
  def change
    add_column :combatants, :dexterity_score, :integer
    add_column :combatants_in_combats, :hidden_initiative, :float
    rename_column :combatants_in_combats, :working_initiative, :visual_initiative
  end
end
