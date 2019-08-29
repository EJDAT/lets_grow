class UserTasksController < ApplicationController

  def index
    @user_tasks_by_plant = UserTask.where(validated: false)
      .where(user: current_user)
      .joins(:task)
      .group_by { |ut| ut.task.plant }
  end

  def mark_as_done
    @task_done = UserTask.find(params[:user_task_id])
    @task_done.validated = true
    @task_done.save

  end

end
