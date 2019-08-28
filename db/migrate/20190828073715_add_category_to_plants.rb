class AddCategoryToPlants < ActiveRecord::Migration[5.2]
  def change
    add_column :plants, :category, :string
  end
end
