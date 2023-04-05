class CreateCombatantsInCombat < ActiveRecord::Migration[7.0]
  def change
    create_table :combatants_in_combats do |t|
      t.integer :working_initiative
      t.integer :current_hp
      t.integer :temporary_hp

      t.timestamps
    end
  end
end
