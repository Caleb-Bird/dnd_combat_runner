class CurrentInitiativeFloat < ActiveRecord::Migration[7.0]
  def change
    change_column :combats, :current_initiative, :float, default: 100
  end
end
