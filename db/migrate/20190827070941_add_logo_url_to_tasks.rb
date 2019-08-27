class AddLogoUrlToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :logo_url, :string
  end
end
