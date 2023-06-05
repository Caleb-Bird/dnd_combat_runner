class AddCurrentInitiative < ActiveRecord::Migration[7.0]
  def change
    add_column :combats, :current_initiative, :integer, default: 100
  end
end
