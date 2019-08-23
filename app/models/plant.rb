class Plant < ApplicationRecord
  has_many :tasks
  has_many :garden_plants,  dependent: :destroy
end
