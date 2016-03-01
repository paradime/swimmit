class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.integer :distance, null: false
      t.integer :repetitions, null: false
      t.integer :rest
      t.integer :interval
      t.string :stroke, null: false
      t.references :drill, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
