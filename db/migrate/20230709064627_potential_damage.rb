class PotentialDamage < ActiveRecord::Migration[7.0]
  def change
    add_column :combatants_in_combats, :potential_damage, :integer
  end
end
