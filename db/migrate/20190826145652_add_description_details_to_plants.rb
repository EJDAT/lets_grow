class AddDescriptionDetailsToPlants < ActiveRecord::Migration[5.2]
  def change
    add_column :plants, :description_details, :string
  end
end
