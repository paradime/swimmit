class CreateDrills < ActiveRecord::Migration
  def change
    create_table :drills do |t|
      t.string :category
      t.text :note
      t.references :workout, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
