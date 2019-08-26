class UserTasksController < ApplicationController
  def index
    @user_tasks = UserTask.where(user_id: current_user.id)
  end
end
