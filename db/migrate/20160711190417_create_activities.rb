class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
   	  t.string :name, null: false
   	  t.string :interest, null: false
   	  t.string :url
   	  t.text :description
   	  t.reference :trail, foreign_key: true

      t.timestamps null: false
    end
  end
end
