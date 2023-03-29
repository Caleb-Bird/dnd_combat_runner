class CombatsDescription < ActiveRecord::Migration[7.0]
  def change
    add_column :combats, :description, :string
  end
end
