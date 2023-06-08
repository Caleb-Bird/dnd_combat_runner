class AddDatabaseValidations < ActiveRecord::Migration[7.0]
  def change
    # Combatants
    change_column :combatants, :name, :string, null: false
    change_column :combatants, :maximum_hp, :integer, null: false

    # Combat
    change_column :combats, :combat_name, :string, null: false
    change_column :combats, :current_initiative, :float, null: false, default: 100
  end
end
