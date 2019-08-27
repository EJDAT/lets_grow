class ChangeHarvestDateToBeJsonbInPlants < ActiveRecord::Migration[5.2]
  def change
     change_column :plants, :harvest_date, 'jsonb USING CAST(harvest_date AS jsonb)'
  end
end
