class RemovephotoUrlFromplants < ActiveRecord::Migration[5.2]
  def change
    remove_column :plants, :photo_url, :string
  end
end
