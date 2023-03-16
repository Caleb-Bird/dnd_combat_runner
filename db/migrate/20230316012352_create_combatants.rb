class CreateCombatants < ActiveRecord::Migration[7.0]
  def change
    create_table :combatants do |t|
      t.string :Name
      t.integer :Initiative
      t.integer :HP_Max
      t.integer :HP
      t.integer :Temp_HP
      t.integer :AC
      t.integer :Str_Save
      t.integer :Dex_Save
      t.integer :Con_Save
      t.integer :Int_Save
      t.integer :Wis_Save
      t.integer :Cha_Save
      t.integer :Death_Save_Pass
      t.integer :Death_Save_Fail
      t.boolean :Dead

      t.timestamps
    end
  end
end
