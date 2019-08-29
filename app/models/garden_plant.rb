class GardenPlant < ApplicationRecord
  belongs_to :garden
  belongs_to :plant
  after_destroy :destroy_user_tasks

  private

  def destroy_user_tasks
    self.plant.tasks.each do |task|
      UserTask.where(user: self.garden.user, task: task).destroy_all
    end
  end
end
