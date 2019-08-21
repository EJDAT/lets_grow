class ChangeHarvestDateTypeInPlants < ActiveRecord::Migration[5.2]
  def change
    change_column :plants, :harvest_date, :string
  end
end
