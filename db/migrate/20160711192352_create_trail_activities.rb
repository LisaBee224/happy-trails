class CreateTrailActivities < ActiveRecord::Migration
  def change
    create_table :trail_activities do |t|
      t.string :name, null: false
   	  t.string :url
   	  t.text :description
   	  t.reference :trail, foreign_key: true
   	  t.reference :activity, foreign_key: true

      t.timestamps null: false
    end
  end
end
