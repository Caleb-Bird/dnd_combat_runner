class RemoveCicTableIndex < ActiveRecord::Migration[7.0]
  def change
    remove_column :combatants_in_combats, :combat_table_index
  end
end
