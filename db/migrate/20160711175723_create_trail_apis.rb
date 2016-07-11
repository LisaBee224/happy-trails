class CreateTrailApis < ActiveRecord::Migration
  def change
    create_table :trail_apis do |t|

      t.timestamps null: false
    end
  end
end
