class RemoveDeathStuff < ActiveRecord::Migration[7.0]
  def change
    remove_column :combatants, :death_save_passed
    remove_column :combatants, :death_save_failed
    remove_column :combatants, :dead
  end
end
