class ChangePlantDateToBeJsonbInPlants < ActiveRecord::Migration[5.2]
  def change
    change_column :plants, :plant_date, 'jsonb USING CAST(plant_date AS jsonb)'
  end
end
