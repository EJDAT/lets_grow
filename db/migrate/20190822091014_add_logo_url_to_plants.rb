class AddLogoUrlToPlants < ActiveRecord::Migration[5.2]
  def change
    add_column :plants, :logo_url, :string
  end
end
