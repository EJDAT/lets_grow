class RemoveNameFromGardens < ActiveRecord::Migration[5.2]
  def change
    remove_column :gardens, :name
    remove_column :gardens, :image_url
  end
end
