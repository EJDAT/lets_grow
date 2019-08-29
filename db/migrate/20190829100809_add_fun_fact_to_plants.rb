class AddFunFactToPlants < ActiveRecord::Migration[5.2]
  def change
    add_column :plants, :fun_fact, :integer
  end
end
