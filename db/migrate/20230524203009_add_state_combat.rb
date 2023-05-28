class AddStateCombat < ActiveRecord::Migration[7.0]
  def change
    add_column :combats, :status, :integer, default: 0
  end
end
