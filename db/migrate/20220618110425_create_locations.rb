class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.integer :capacity
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
