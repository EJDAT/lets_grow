class ChangePlantDateTypeInPlants < ActiveRecord::Migration[5.2]
  def change
    change_column :plants, :plant_date, :string
  end
end
