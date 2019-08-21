class RemoveValidatedFromTasks < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :validated, :boolean
  end
end
