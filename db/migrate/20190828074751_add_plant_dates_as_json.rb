class AddPlantDatesAsJson < ActiveRecord::Migration[5.2]
  def change
    add_column :plants, :plant_date, :jsonb, default: {}
    add_column :plants, :harvest_date, :jsonb, default: {}
  end
end
