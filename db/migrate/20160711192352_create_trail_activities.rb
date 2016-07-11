class CreateTrailActivities < ActiveRecord::Migration
  def change
    create_table :trail_activities do |t|
      t.string :name, null: false
   	  t.string :url
   	  t.text :description
   	  t.references :trail, foreign_key: true
   	  t.references :activity, foreign_key: true

      t.timestamps null: false
    end
  end
end
