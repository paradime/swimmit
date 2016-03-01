class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.text :description
      t.string :name, null: false
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
