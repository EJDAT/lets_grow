class ChangeValidatedToBeBooleanInUserTasks < ActiveRecord::Migration[5.2]
  def change
    change_column :user_tasks, :validated, :boolean, default: 0
  end
end
