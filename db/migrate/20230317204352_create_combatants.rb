class CreateCombatants < ActiveRecord::Migration[7.0]
  def change
    create_table :combatants do |t|
      t.string :name
      t.integer :maximum_hp
      t.integer :temporary_hp
      t.integer :hp
      t.integer :armor_class
      t.integer :spell_dc
      t.integer :strength_save
      t.integer :dexterity_save
      t.integer :constitution_save
      t.integer :intellect_save
      t.integer :wisdom_save
      t.integer :charisma_save
      t.integer :death_save_passed
      t.integer :death_save_failed
      t.boolean :dead
      t.timestamps
    end
  end
end
