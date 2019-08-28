module ApplicationHelper
  def user_tasks_count
    UserTask.where(validated: false).where(user: current_user).count
  end

end
