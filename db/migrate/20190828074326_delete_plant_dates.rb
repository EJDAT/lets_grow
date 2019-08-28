class DeletePlantDates < ActiveRecord::Migration[5.2]
  def change
    remove_column :plants, :plant_date
    remove_column :plants, :harvest_date
  end
end
