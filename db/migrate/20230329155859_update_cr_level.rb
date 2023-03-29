class UpdateCrLevel < ActiveRecord::Migration[7.0]
  def change
    add_column :combatants, :description, :string
    add_column :combatants, :cr_or_level, :integer
  end
end
