class CreateTrails < ActiveRecord::Migration
  def change
    create_table :trails do |t|
      t.string :name, null: false
      t.text :directions
      t.float :lat
      t.float :lon
      t.text :description
      t.string :city, null: false
      t.string :state, null: false

      t.timestamps null: false
    end
  end
end
