class ChangeFunFactToBeStringInPlants < ActiveRecord::Migration[5.2]
  def change
    change_column :plants, :fun_fact, :string
  end
end
