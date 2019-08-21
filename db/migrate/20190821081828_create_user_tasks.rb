class CreateUserTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :user_tasks do |t|
      t.boolean :validated
      t.bigint :user_id
      t.bigint :task_id
    end
  end
end
