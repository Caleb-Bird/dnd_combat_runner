class UpdateCicIndex < ActiveRecord::Migration[7.0]
  def change
    add_column :combatants_in_combats, :combat_table_index, :integer
  end
end
