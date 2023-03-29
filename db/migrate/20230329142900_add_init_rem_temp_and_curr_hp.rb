class AddInitRemTempAndCurrHp < ActiveRecord::Migration[7.0]
  def change
    remove_column :combatants, :temporary_hp
    remove_column :combatants, :hp
    add_column :combatants, :initiative, :integer
  end
end
