class HasManyUserToCombatsCiCs < ActiveRecord::Migration[7.0]
  def change
    add_column :combats, :user_id, :integer
    add_index :combats, :user_id
    add_column :combatants_in_combats, :user_id, :integer
    add_index :combatants_in_combats, :user_id
  end
end
