class CreateUserTrails < ActiveRecord::Migration
  def change
    create_table :user_trails do |t|
      t.references :user, foreign_key: true
      t.references :trail, foreign_key: true
      t.timestamps null: false
    end
  end
end
