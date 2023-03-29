class CreateCombats < ActiveRecord::Migration[7.0]
  def change
    create_table :combats do |t|
      t.string :combat_name

      t.timestamps
    end
  end
end
