class AddUserIdToCombatants < ActiveRecord::Migration[7.0]
  def change
    add_column :combatants, :user_id, :integer
    add_index :combatants, :user_id
  end
end
