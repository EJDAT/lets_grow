class AddDifficultyToPlants < ActiveRecord::Migration[5.2]
  def change
    add_column :plants, :difficulty, :integer
  end
end
