class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :photo_url
      t.string :name
      t.string :description
      t.integer :price
      t.date :plant_date
      t.date :harvest_date
      t.references :garden, foreign_key: true

      t.timestamps
    end
  end
end
